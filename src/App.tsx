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
import { Database, Storage } from '@ionic/storage';

import { useEffect, useState } from 'react';

import { albumsOutline, bag, bagOutline, ellipse, informationCircleOutline, personCircleOutline, square, triangle } from 'ionicons/icons';

import Tab1 from './pages/Tab1';
import Tab2 from './pages/Tab2';
import Tab3 from './pages/Tab3';
import LoginPage from './pages/login';

import Tabs from './components/tabs';

import * as Sentry from '@sentry/capacitor';
// The example is using Angular, Import '@sentry/vue' or '@sentry/react' when using a Sibling different than Angular.
import * as SentrySibling from '@sentry/react';
// For automatic instrumentation (highly recommended)
import { BrowserTracing } from '@sentry/tracing';

/* Core CSS required for Ionic components to work properly */
import '@ionic/react/css/core.css';

/* Basic CSS for apps built with Ionic */
import '@ionic/react/css/normalize.css';
import '@ionic/react/css/structure.css';
import '@ionic/react/css/typography.css';

/* Optional CSS utils that can be commented out */
import '@ionic/react/css/padding.css';
import '@ionic/react/css/float-elements.css';
import '@ionic/react/css/text-alignment.css';
import '@ionic/react/css/text-transformation.css';
import '@ionic/react/css/flex-utils.css';
import '@ionic/react/css/display.css';

/* Theme variables */
import './theme/variables.css';

setupIonicReact();

Sentry.init(
  {
    dsn: 'https://c72cf795e5b64c9eab015776ba981f00@o1349792.ingest.sentry.io/6648628',
    // To set your release and dist versions
    release: 'my-project-name@' + process.env.npm_package_version,
    dist: '1',
    // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
    // We recommend adjusting this value in production.
    tracesSampleRate: 1.0,
    integrations: [
      new BrowserTracing({
        tracingOrigins: ['localhost', 'https://api.voltadigital.io'],
      }),
    ]
  },
  // Forward the init method to the sibling Framework.
  SentrySibling.init
)

const App: React.FC = () =>  {
  const [db, setDb] = useState<Database | null>(null);

  useEffect(() => {
    async function initDb() {
      const store = new Storage();

      const db = await store.create();

      setDb(db);
    }

    initDb();
  }, []);

  return (
  <IonApp>
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
  </IonApp>
)};

export default App;
