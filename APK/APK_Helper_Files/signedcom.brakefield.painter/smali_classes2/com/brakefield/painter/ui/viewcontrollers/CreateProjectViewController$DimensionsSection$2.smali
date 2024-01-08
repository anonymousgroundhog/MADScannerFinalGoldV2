.class Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$2;
.super Ljava/lang/Object;
.source "CreateProjectViewController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->setup(Landroid/app/Activity;)V
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

    .line 527
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$2;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 530
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 531
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$2;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$900(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object p2

    invoke-virtual {p2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getType()I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 532
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$2;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$900(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setType(I)V

    .line 533
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$2;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$1000(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setType(I)V

    .line 534
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$2;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
