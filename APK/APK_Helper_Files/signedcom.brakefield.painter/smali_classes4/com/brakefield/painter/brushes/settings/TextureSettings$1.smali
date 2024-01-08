.class Lcom/brakefield/painter/brushes/settings/TextureSettings$1;
.super Ljava/lang/Object;
.source "TextureSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/brushes/settings/TextureSettings;->bindSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/brushes/settings/TextureSettings;

.field final synthetic val$brushTextureSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings$1;->this$0:Lcom/brakefield/painter/brushes/settings/TextureSettings;

    iput-object p2, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings$1;->val$brushTextureSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;

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

    .line 126
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings$1;->val$brushTextureSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;

    invoke-virtual {p1, p3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->setStyle(I)V

    .line 127
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
