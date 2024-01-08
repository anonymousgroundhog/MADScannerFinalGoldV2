.class Lcom/brakefield/painter/brushes/settings/HeadSettings$1;
.super Ljava/lang/Object;
.source "HeadSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/brushes/settings/HeadSettings;->bindSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/brushes/settings/HeadSettings;

.field final synthetic val$brushHeadSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings$1;->this$0:Lcom/brakefield/painter/brushes/settings/HeadSettings;

    iput-object p2, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings$1;->val$brushHeadSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

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

    .line 149
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings$1;->val$brushHeadSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

    invoke-virtual {p1, p3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setHeadStyle(I)V

    .line 150
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

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
