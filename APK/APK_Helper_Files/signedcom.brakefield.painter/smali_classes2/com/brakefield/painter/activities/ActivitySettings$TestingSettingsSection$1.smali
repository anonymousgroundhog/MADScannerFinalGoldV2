.class Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection$1;
.super Ljava/lang/Object;
.source "ActivitySettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;)V
    .locals 0

    .line 1040
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection$1;->this$1:Lcom/brakefield/painter/activities/ActivitySettings$TestingSettingsSection;

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

    .line 1043
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setPreviewSegmentsStyle(I)V

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
