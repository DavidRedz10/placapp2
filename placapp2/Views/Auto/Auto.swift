import SwiftUI
import CoreData

struct Auto: View {
    
    var vehicle: Vehicle
    
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \License.plate, ascending: true)],
        animation: .default
    ) private var licenses: FetchedResults<License>
    
    var body: some View {
        ScrollView (showsIndicators: false){
            VStack(spacing: 16) {
                
                
                //Imagen central
                Image("carro")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .clipped()
                    .mask { RoundedRectangle(cornerRadius: 34, style: .continuous) }
                    .padding()
                //Titulo agregar vehiculo
                HeaderView(title: "Tus vehiculos")
                Spacer()
                //Iteracion elementos CoreData
                VStack(spacing: 16) {
                    ForEach(licenses, id: \.self) { license in
                        Product_Cell( subtitle: (license.plate ?? ""), thumbnail: Image("carro"), title: "HONDA CR-V")
                    }
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
                    
                }
            }
        }
        .background(Color.white)
    }
    
    
    
    struct Previews_Auto_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()    }
    }
    
    
    struct Product_Cell: View {
        var oldPrice = "$999"
        var subtitle = "Subtitle"
        var thumbnail = Image("carro")
        var title = "Title"
        
        var body: some View {
            
            VStack{
                VStack(alignment: .leading, spacing: 9) {
                    HStack(alignment: .firstTextBaseline, spacing: 9) {
                        Text(title)
                            .kerning(1.0)
                            .font(.title2)
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text(subtitle)
                                .kerning(1.0)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                    HStack(alignment: .firstTextBaseline) {
                        Text("SIN PICO Y PLACA")
                            .kerning(1.0)
                            .font(.system(size: 10, weight: .semibold, design: .default))
                            .foregroundColor(Color(.systemBackground))
                            .padding(6)
                            .background(Color(.displayP3, red: 185/255, green: 219/255, blue: 147/255))
                            .mask { RoundedRectangle(cornerRadius: 5, style: .continuous) }
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                            .font(.system(size: 12, weight: .regular, design: .monospaced))
                            .lineSpacing(2)
                            .foregroundColor(.secondary)
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .clipped()
                .background {
                    RoundedRectangle(cornerRadius: 14, style: .continuous)
                        .fill(Color(.secondarySystemGroupedBackground))
                        .shadow(color: Color(.sRGB, red: 0/255, green: 0/255, blue: 0/255).opacity(0.06), radius: 8, x: 0, y: 4)
                }
                .padding(.horizontal)
            }
        }
    }
}
