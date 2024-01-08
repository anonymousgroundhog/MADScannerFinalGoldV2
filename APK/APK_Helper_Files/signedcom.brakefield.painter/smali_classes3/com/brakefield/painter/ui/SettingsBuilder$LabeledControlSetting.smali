.class Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;
.super Ljava/lang/Object;
.source "SettingsBuilder.java"

# interfaces
.implements Lcom/brakefield/painter/ui/SettingsBuilder$Constrainable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/SettingsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabeledControlSetting"
.end annotation


# instance fields
.field private final controlId:I

.field private final labelId:I

.field final synthetic this$0:Lcom/brakefield/painter/ui/SettingsBuilder;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/SettingsBuilder;II)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;->labelId:I

    .line 38
    iput p3, p0, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;->controlId:I

    return-void
.end method


# virtual methods
.method public constrain(Landroidx/constraintlayout/widget/ConstraintSet;II)I
    .locals 2

    if-nez p2, :cond_0

    .line 42
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;->controlId:I

    invoke-static {p2, p1, v0, p3}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$000(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v1, p0, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;->controlId:I

    invoke-static {v0, p1, v1, p2}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$100(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 44
    :goto_0
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;->labelId:I

    iget v1, p0, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;->controlId:I

    invoke-static {p2, p1, v0, v1}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$200(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 45
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;->labelId:I

    invoke-static {p2, p1, v0, p3}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$300(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 46
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;->controlId:I

    invoke-static {p2, p1, v0, p3}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$400(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 47
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget p3, p0, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;->labelId:I

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;->controlId:I

    invoke-static {p2, p1, p3, v0}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$500(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 48
    iget p1, p0, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;->controlId:I

    return p1
.end method
