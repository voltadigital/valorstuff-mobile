import { Redirect, Route } from 'react-router-dom';
import {
  IonApp,
  IonIcon,
  IonLabel,
  IonRouterOutlet,
  IonTabBar,
  IonTabButton,
  IonTabs,
  setupIonicReact
} from '@ionic/react';

import { IonReactRouter } from '@ionic/react-router';

import Tab1 from '../pages/Tab1';
import Tab2 from '../pages/Tab2';
import Tab3 from '../pages/Tab3';
import LoginPage from '../pages/login';

const Tabs: React.FC = () => {
    return (
        <IonReactRouter>
            <IonTabs>
                <IonRouterOutlet>
                    <Route exact path="/tab1">
                        <Tab1 />
                    </Route>

                    <Route exact path="/tab2">
                        <Tab2 />
                    </Route>

                    <Route path="/tab3">
                        <Tab3 />
                    </Route>

                    <Route exact path="/">
                        <Redirect to="/tab1" />
                    </Route>

                </IonRouterOutlet>
            </IonTabs>
      </IonReactRouter>
    )
}

export default Tabs