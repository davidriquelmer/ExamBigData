import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;
import java.io.IOException;

public class reducer extends Reducer<Text, Text, Text, Text> {
    @Override
    protected void reduce(Text key, Iterable<Text> values, Context context) throws IOException, InterruptedException{
        StringBuilder lista= new StringBuilder();
        for (Text value : values){
            lista.append(", "+value);
        }
        context.write(key, new Text(lista.toString()));
    }
}
