public class QueueableExample2 implements Queueable {
  public void execute(QueueableContext cont) {
  Contact c = new Contact(lastname ='shivakumar');
  insert c; 
  
      system.enqueueJob(new QueueableExample2());

  }
}