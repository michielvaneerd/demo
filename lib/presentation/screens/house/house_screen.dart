import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funda/core/helpers.dart';
import 'package:funda/core/injections.dart';
import 'package:funda/core/styles.dart';
import 'package:funda/domain/entities/house_entity.dart';
import 'package:funda/domain/entities/list_house_entity.dart';
import 'package:funda/presentation/screens/house/house_screen_cubit.dart';
import 'package:funda/presentation/screens/media/media_screen.dart';
import 'package:funda/presentation/widgets/screen_error.dart';
import 'package:funda/presentation/widgets/section_title.dart';
import 'package:funda/presentation/widgets/text_row.dart';
import 'package:funda/presentation/widgets/text_row_expandable.dart';

class HouseScreen extends StatefulWidget {
  final ListHouseEntity listHouseEntity;
  const HouseScreen({required this.listHouseEntity, super.key});

  @override
  State<HouseScreen> createState() => _HouseScreenState();
}

class _HouseScreenState extends State<HouseScreen> {
  static const expandedHeight = 200.0;
  late final ScrollController _scrollController;
  var showTitle = false;
  var readMoreOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          showTitle = _isSliverAppBarExpanded;
        });
      });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  bool get _isSliverAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > expandedHeight - kToolbarHeight;
  }

  Widget _getWidget(HouseScreenState state, BuildContext context) {
    if (state is HouseScreenStateError) {
      return ScreenError(state.appException);
    } else if (state is HouseScreenStateSuccess) {
      return _getHouseWidget(state.house, context);
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }

  Widget _getHouseWidget(HouseEntity house, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SectionTitle(text: house.addess),
            if (house.photosSmall.isNotEmpty)
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MediaScreen(house),
                    ));
                  },
                  icon: Icon(Icons.image,
                      color: Theme.of(context).colorScheme.primary))
          ],
        ),
        Row(
          children: [
            TextRow(text: house.zipCode),
            TextRow(text: house.place),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.square_outlined,
              color: Theme.of(context).colorScheme.secondaryFixed,
            ),
            TextRow(
              text: myLoc(context).surfaceWithValue(house.surface),
              fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.energy_savings_leaf,
              color: Theme.of(context).colorScheme.secondaryFixed,
            ),
            TextRow(
              text: myLoc(context).energyLabelWithValue(
                  house.energylabel ?? myLoc(context).unknown),
              fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
            ),
          ],
        ),
        TextRow(
          text: formatPrice(house.price),
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
        SectionTitle(text: myLoc(context).description),
        TextRowExpandable(
          text: house.description,
          onExpand: (isExpanded) {
            if (isExpanded) {
              readMoreOffset = _scrollController.offset;
            } else {
              // Animate a scroll will trigger the scrollController listener,
              // which will correctly update the showTitle flag.
              _scrollController.animateTo(readMoreOffset,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn);
            }
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HouseScreenCubit(Injections.houseUseCases)
        ..getHouse(widget.listHouseEntity.id),
      child: BlocBuilder<HouseScreenCubit, HouseScreenState>(
        builder: (context, state) {
          return Scaffold(
            body: CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverAppBar(
                  expandedHeight: expandedHeight,
                  //floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    title:
                        showTitle ? Text(widget.listHouseEntity.addess) : null,
                    background: Image.network(widget.listHouseEntity.mainPhoto,
                        fit: BoxFit.fill,
                        errorBuilder: (context, error, stackTrace) =>
                            const Placeholder()),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SafeArea(
                    top: false,
                    minimum: const EdgeInsets.symmetric(
                        horizontal: Styles.paddingSmall),
                    child: _getWidget(state, context),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
