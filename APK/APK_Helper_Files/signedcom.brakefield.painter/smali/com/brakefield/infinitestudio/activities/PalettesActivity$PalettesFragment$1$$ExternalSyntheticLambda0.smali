.class public final synthetic Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1;Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1;->lambda$onItemLongClick$0$com-brakefield-infinitestudio-activities-PalettesActivity$PalettesFragment$1(Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
