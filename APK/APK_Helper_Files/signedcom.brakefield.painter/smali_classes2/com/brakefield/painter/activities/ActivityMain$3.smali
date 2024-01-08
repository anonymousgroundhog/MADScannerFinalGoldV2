.class Lcom/brakefield/painter/activities/ActivityMain$3;
.super Lcom/brakefield/infinitestudio/MessageHandler;
.source "ActivityMain.java"


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

    .line 1046
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain$3;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/MessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataHandlers()[Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$3;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$1100(Lcom/brakefield/painter/activities/ActivityMain;)[Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v0

    return-object v0
.end method
