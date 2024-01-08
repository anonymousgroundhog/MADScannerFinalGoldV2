.class Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;
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
    name = "InlineSliderSetting"
.end annotation


# instance fields
.field private final labelId:I

.field private final sliderId:I

.field final synthetic this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

.field private final valueId:I


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/SettingsBuilder;III)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->labelId:I

    .line 78
    iput p3, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->sliderId:I

    .line 79
    iput p4, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->valueId:I

    return-void
.end method


# virtual methods
.method public constrain(Landroidx/constraintlayout/widget/ConstraintSet;II)I
    .locals 2

    if-nez p2, :cond_0

    .line 83
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->sliderId:I

    invoke-static {p2, p1, v0, p3}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$000(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v1, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->sliderId:I

    invoke-static {v0, p1, v1, p2}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$100(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 85
    :goto_0
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->labelId:I

    iget v1, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->sliderId:I

    invoke-static {p2, p1, v0, v1}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$200(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 86
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->valueId:I

    iget v1, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->sliderId:I

    invoke-static {p2, p1, v0, v1}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$200(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 87
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->labelId:I

    invoke-static {p2, p1, v0, p3}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$300(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 88
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->valueId:I

    invoke-static {p2, p1, v0, p3}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$400(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 89
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget p3, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->sliderId:I

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->labelId:I

    invoke-static {p2, p1, p3, v0}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$600(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 90
    iget-object p2, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->this$0:Lcom/brakefield/painter/ui/SettingsBuilder;

    iget p3, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->sliderId:I

    iget v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->valueId:I

    invoke-static {p2, p1, p3, v0}, Lcom/brakefield/painter/ui/SettingsBuilder;->access$500(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 91
    iget p1, p0, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;->sliderId:I

    return p1
.end method
