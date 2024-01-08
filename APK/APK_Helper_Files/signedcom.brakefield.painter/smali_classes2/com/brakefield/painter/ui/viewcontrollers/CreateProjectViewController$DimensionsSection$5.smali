.class Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$5;
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

    .line 593
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$5;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 599
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 600
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$5;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$900(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object p2

    invoke-virtual {p2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getDPI()I

    move-result p2

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$5;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$1000(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object p2

    invoke-virtual {p2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getDPI()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 601
    :cond_0
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$5;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$900(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setDPI(I)V

    .line 602
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$5;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->access$1000(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;)Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setDPI(I)V

    .line 603
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection$5;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 606
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
