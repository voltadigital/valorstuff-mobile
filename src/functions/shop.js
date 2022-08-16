import * as Valorant from '@liamcottle/valorant.js';

function shop(user, passwd, region) {
    const valorantApi = new Valorant.API(region);
    valorantApi.authorize('username', 'password').then(() => {
        console.log({
            username: valorantApi.username,
            user_id: valorantApi.user_id,
            access_token: valorantApi.access_token,
            entitlements_token: valorantApi.entitlements_token,
        });
    
        // log wallet balances
        valorantApi.getPlayerWallet(valorantApi.user_id).then((response) => {
            console.log(response.data);
        });
    
        // log competitive history
        valorantApi.getPlayerCompetitiveHistory(valorantApi.user_id).then((response) => {
            console.log(response.data);
        });
    
    }).catch((error) => {
        console.log(error);
    })
}