.class public Lcom/brakefield/infinitestudio/color/ColourLovers$GetPalettesJSONTask;
.super Landroid/os/AsyncTask;
.source "ColourLovers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/color/ColourLovers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetPalettesJSONTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 431
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static synthetic add$024(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 1

    invoke-interface/range {p0 .. p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic add$032(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 1

    invoke-interface/range {p0 .. p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic add$033(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 1

    invoke-interface/range {p0 .. p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic addColor$016(Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;)V
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->addColor(Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;)V

    return-void
.end method

.method public static synthetic addSuppressed$028(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic addSuppressed$030(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic addWidth$021(Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;F)V
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->addWidth(F)V

    return-void
.end method

.method public static synthetic append$004(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic append$011(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic append$013(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic close$025(Ljava/io/BufferedReader;)V
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/io/BufferedReader;->close()V

    return-void
.end method

.method public static synthetic close$026(Ljava/io/InputStreamReader;)V
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStreamReader;->close()V

    return-void
.end method

.method public static synthetic close$027(Ljava/io/BufferedReader;)V
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/io/BufferedReader;->close()V

    return-void
.end method

.method public static synthetic close$029(Ljava/io/InputStreamReader;)V
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStreamReader;->close()V

    return-void
.end method

.method public static synthetic floatValue$020(Ljava/lang/Float;)F
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static synthetic getInputStream$002(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getJSONArray$009(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getJSONArray$017(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getJSONObject$007(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getString$008(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getString$012(Lorg/json/JSONArray;I)Ljava/lang/String;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getString$019(Lorg/json/JSONArray;I)Ljava/lang/String;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getString$022(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic length$006(Lorg/json/JSONArray;)I
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public static synthetic length$010(Lorg/json/JSONArray;)I
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public static synthetic length$018(Lorg/json/JSONArray;)I
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public static synthetic openConnection$001(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic printStackTrace$031(Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static synthetic readLine$003(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic set$015(Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;I)V
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;->set(I)V

    return-void
.end method

.method public static synthetic setImageUrl$023(Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;Ljava/lang/String;)V
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->setImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic toString$005(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic toString$014(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 431
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/color/ColourLovers$GetPalettesJSONTask;->doInBackground([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const v0, 0x0

    aput-object p0, v2, v0

    const v0, 0x1

    aput-object p1, v2, v0

    const-string/jumbo v1, "sEdfjJkN789ZlSv9"

    invoke-static {v1, v2}, Lcom/pairip/VMRunner;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 431
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/color/ColourLovers$GetPalettesJSONTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 486
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 487
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/color/ColourLovers$OnPalettesCompletionListener;

    const/4 v1, 0x1

    .line 488
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/color/ColourLovers$OnPalettesCompletionListener;->onCompletion(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 435
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
