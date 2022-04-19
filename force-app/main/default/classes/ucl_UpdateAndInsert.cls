public class ucl_UpdateAndInsert implements Schedulable {
    public void execute(SchedulableContext ctx) {
        ucl_LegalAdvisors.makeGetCallout();
    }
}