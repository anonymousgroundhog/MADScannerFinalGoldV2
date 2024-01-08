.class Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$1;
.super Ljava/lang/Object;
.source "CreateProjectViewController.java"

# interfaces
.implements Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$OnPresetSelected;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyPreset(Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V
    .locals 3

    .line 421
    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->getMeasurementType()I

    move-result v0

    .line 422
    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->getDPI()I

    move-result v1

    .line 423
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$900(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setType(I)V

    .line 424
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$1000(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setType(I)V

    .line 425
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$900(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object v0

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->getWidth()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setValue(F)V

    .line 426
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$1000(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object v0

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->getHeight()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setValue(F)V

    .line 427
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$900(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setDPI(I)V

    .line 428
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$1000(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setDPI(I)V

    .line 429
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$1102(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;Z)Z

    .line 430
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$1300(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$1202(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;F)F

    .line 431
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

    return-void
.end method
