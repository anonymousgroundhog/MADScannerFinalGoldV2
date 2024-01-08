.class Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$4;
.super Ljava/lang/Object;
.source "CreateProjectViewController.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 568
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$4;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 575
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$4;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$1000(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue()F

    move-result v0

    .line 577
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 578
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$4;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$1000(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setValue(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 580
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 582
    :goto_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$4;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$1000(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue()F

    move-result p1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    .line 583
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$4;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->heightEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 584
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$4;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$1200(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 585
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$4;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$900(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$4;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$1000(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue()F

    move-result v1

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$4;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$1200(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$1900(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;FF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setValue(F)V

    .line 588
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$4;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
