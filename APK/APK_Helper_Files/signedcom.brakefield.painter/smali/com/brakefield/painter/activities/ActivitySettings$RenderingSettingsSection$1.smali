.class Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection$1;
.super Ljava/lang/Object;
.source "ActivitySettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field previousPosition:I

.field final synthetic this$1:Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection$1;->this$1:Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 470
    iput p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection$1;->previousPosition:I

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

    .line 472
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    invoke-interface {p2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 474
    iget p2, p0, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection$1;->previousPosition:I

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void

    .line 477
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 478
    invoke-static {p1}, Lcom/brakefield/painter/ColorProfiles;->setColorProfile(I)V

    .line 479
    iput p3, p0, Lcom/brakefield/painter/activities/ActivitySettings$RenderingSettingsSection$1;->previousPosition:I

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
