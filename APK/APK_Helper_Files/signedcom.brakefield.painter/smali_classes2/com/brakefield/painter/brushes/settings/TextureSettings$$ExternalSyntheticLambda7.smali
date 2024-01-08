.class public final synthetic Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/brushes/settings/TextureSettings;

.field public final synthetic f$1:Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda7;->f$0:Lcom/brakefield/painter/brushes/settings/TextureSettings;

    iput-object p2, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda7;->f$1:Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda7;->f$0:Lcom/brakefield/painter/brushes/settings/TextureSettings;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda7;->f$1:Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/painter/brushes/settings/TextureSettings;->lambda$bindSettings$4$com-brakefield-painter-brushes-settings-TextureSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;Landroid/view/View;)V

    return-void
.end method
