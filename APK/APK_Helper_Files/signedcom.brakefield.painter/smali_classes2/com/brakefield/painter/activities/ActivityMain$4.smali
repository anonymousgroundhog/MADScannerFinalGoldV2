.class Lcom/brakefield/painter/activities/ActivityMain$4;
.super Ljava/lang/Object;
.source "ActivityMain.java"

# interfaces
.implements Lcom/brakefield/painter/SharedMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/activities/ActivityMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivityMain;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/ActivityMain;)V
    .locals 0

    .line 1055
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanCachedLayers()V
    .locals 2

    .line 1126
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$3600(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public decreaseOpacity()V
    .locals 2

    .line 1102
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$2800(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public decreaseSize()V
    .locals 2

    .line 1096
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$2600(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public dismissProgress()V
    .locals 2

    .line 1063
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$1500(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public exitApp(I)V
    .locals 2

    .line 1111
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$3100(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;I)V

    return-void
.end method

.method public hideLoadScreen()V
    .locals 2

    .line 1108
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$3000(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public hideSplashScreen()V
    .locals 2

    .line 1123
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$3500(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public increaseOpacity()V
    .locals 2

    .line 1105
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$2900(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public increaseSize()V
    .locals 2

    .line 1099
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$2700(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public launchBrushCreator(Ljava/lang/String;)V
    .locals 2

    .line 1120
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$3400(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;Ljava/lang/Object;)V

    return-void
.end method

.method public launchExport(Ljava/lang/String;)V
    .locals 2

    .line 1114
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$3200(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;Ljava/lang/Object;)V

    return-void
.end method

.method public launchSettings()V
    .locals 2

    .line 1087
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$2300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 1132
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/MessageHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postRenderEvent(Ljava/lang/Runnable;)V
    .locals 2

    .line 1135
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$3800(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;Ljava/lang/Object;)V

    return-void
.end method

.method public redoPressed()V
    .locals 2

    .line 1069
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$1700(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public requestRender()V
    .locals 2

    .line 1057
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$1200(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public selectFilter()V
    .locals 2

    .line 1129
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$3700(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public selectLayerAbove()V
    .locals 2

    .line 1093
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$2500(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public selectLayerBelow()V
    .locals 2

    .line 1090
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$2400(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public showInterface()V
    .locals 2

    .line 1081
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$2100(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2

    .line 1072
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$1800(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;Ljava/lang/Object;)V

    return-void
.end method

.method public showProgress()V
    .locals 2

    .line 1060
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$1400(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public toggleInterface()V
    .locals 2

    .line 1084
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$2200(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public undoPressed()V
    .locals 2

    .line 1066
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$1600(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public updateCameraIcon()V
    .locals 2

    .line 1117
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$3300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public updateLayers()V
    .locals 2

    .line 1075
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$1900(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method

.method public updateUI()V
    .locals 2

    .line 1078
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1300(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityMain$4;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$2000(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V

    return-void
.end method
