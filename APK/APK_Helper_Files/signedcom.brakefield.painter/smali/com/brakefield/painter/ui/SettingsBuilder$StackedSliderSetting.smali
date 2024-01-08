.class Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;
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
    name = "StackedSliderSetting"
.end annotation


# instance fields
.field private final labelId:I

.field private final sliderId:I

.field final synthetic this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

.field private final valueId:I


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/SettingsBuilder;III)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->labelId:I

    .line 101
    iput p3, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->sliderId:I

    .line 102
    iput p4, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->valueId:I

    return-void
.end method


# virtual methods
.method public constrain(Landroidx/constraintlayout/widget/ConstraintSet;II)I
    .locals 2

    if-nez p2, :cond_0

    .line 106
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->labelId:I

    invoke-static {p2, p1, v0, p3}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$000(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v1, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->labelId:I

    invoke-static {v0, p1, v1, p2}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$100(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 108
    :goto_0
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->valueId:I

    iget v1, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->labelId:I

    invoke-static {p2, p1, v0, v1}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$200(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 109
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->labelId:I

    invoke-static {p2, p1, v0, p3}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$300(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 110
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->valueId:I

    invoke-static {p2, p1, v0, p3}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$400(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 111
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->labelId:I

    iget v1, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->valueId:I

    invoke-static {p2, p1, v0, v1}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$500(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 112
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->sliderId:I

    iget v1, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->labelId:I

    invoke-static {p2, p1, v0, v1}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$100(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 113
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->sliderId:I

    invoke-static {p2, p1, v0, p3}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$300(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 114
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->sliderId:I

    invoke-static {p2, p1, v0, p3}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$400(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 115
    iget p1, p0, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;->sliderId:I

    return p1
.end method
