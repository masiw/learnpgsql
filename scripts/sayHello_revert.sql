/* Revert any changes done by helloWorld.sql
 * and leave the cluster in a clean state.
 *
 * Execute with:
 * psql -p5433 -U postgres -f ./sayHello_revert.sql
*/

-- drop database
DROP DATABASE greetings;
