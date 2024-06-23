import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funda/core/helpers.dart';
import 'package:funda/core/styles.dart';
import 'package:funda/domain/entities/list_house_entity.dart';
import 'package:funda/presentation/screens/house/house_screen.dart';
import 'package:funda/presentation/screens/main/main_screen_cubit.dart';
import 'package:funda/presentation/widgets/screen_error.dart';
import 'package:funda/presentation/widgets/text_row.dart';

/// Screen that displays a list of houses
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  Widget _getWidget(MainScreenState state) {
    if (state is MainScreenStateError) {
      return ScreenError(state.appException);
    } else if (state is MainScreenStateSuccess) {
      return _getHousesWidget(state.houses);
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }

  Widget _getHousesWidget(List<ListHouseEntity> houses) {
    return ListView.builder(
      itemCount: houses.length,
      itemBuilder: (context, index) {
        final house = houses[index];
        return ListTile(
          contentPadding: EdgeInsets.zero,
          title: Card(
            child: Padding(
              padding: const EdgeInsets.all(Styles.paddingSmall),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    house.mainPhoto,
                    fit: BoxFit.fill,
                    errorBuilder: (context, error, stackTrace) =>
                        const Placeholder(
                      fallbackHeight: 200,
                    ),
                  ),
                  TextRow(text: house.addess),
                  TextRow(
                      text: formatPrice(house.price),
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold)
                ],
              ),
            ),
          ),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => HouseScreen(listHouseEntity: house),
          )),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(myLoc(context).appName),
        ),
        body: BlocBuilder<MainScreenCubit, MainScreenState>(
          builder: (context, state) {
            return _getWidget(state);
          },
        ));
  }
}
