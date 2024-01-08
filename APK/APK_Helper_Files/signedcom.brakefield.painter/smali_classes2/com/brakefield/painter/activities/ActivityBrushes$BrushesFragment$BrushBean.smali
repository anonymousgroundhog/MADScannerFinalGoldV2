.class public Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;
.super Lcom/brakefield/infinitestudio/image/ImageBean;
.source "ActivityBrushes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrushBean"
.end annotation


# instance fields
.field public deleted:Z

.field public id:Ljava/lang/String;

.field public loc:Ljava/lang/String;

.field public loves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public owned:Z

.field public reported:Z

.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->this$0:Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/ImageBean;-><init>()V

    const/4 p1, 0x0

    .line 240
    iput-boolean p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->reported:Z

    .line 241
    iput-boolean p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->deleted:Z

    .line 243
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->loves:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->deleted:Z

    return-void
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->loc:Ljava/lang/String;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getBrushDownloadURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "downloaded_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->loc:Ljava/lang/String;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getBrushPreviewURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public report()V
    .locals 1

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->reported:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setLoc(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->loc:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->name:Ljava/lang/String;

    return-void
.end method
