.class public final synthetic Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;

.field public final synthetic f$1:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda2;->f$1:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda2;->f$1:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->lambda$update$4$com-brakefield-infinitestudio-settings-ColorPickerSetup(Landroid/content/SharedPreferences;Landroid/view/View;)V

    return-void
.end method
