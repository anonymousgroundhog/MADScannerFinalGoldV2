.class Lcom/brakefield/painter/PainterProjectStore$Project$Info;
.super Ljava/lang/Object;
.source "PainterProjectStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/PainterProjectStore$Project;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Info"
.end annotation


# instance fields
.field displayName:Ljava/lang/String;

.field isPattern:Z

.field isTemplate:Z

.field final synthetic this$1:Lcom/brakefield/painter/PainterProjectStore$Project;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/PainterProjectStore$Project;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/brakefield/painter/PainterProjectStore$Project$Info;->this$1:Lcom/brakefield/painter/PainterProjectStore$Project;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/brakefield/painter/PainterProjectStore$Project$Info;->displayName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/brakefield/painter/PainterProjectStore$Project$Info;->isPattern:Z

    .line 47
    iput-boolean p1, p0, Lcom/brakefield/painter/PainterProjectStore$Project$Info;->isTemplate:Z

    return-void
.end method
