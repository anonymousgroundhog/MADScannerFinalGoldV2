.class public final synthetic Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/components/OnChange;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/brakefield/infinitestudio/ui/components/OnChange;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch$$ExternalSyntheticLambda1;->f$2:Lcom/brakefield/infinitestudio/ui/components/OnChange;

    return-void
.end method


# virtual methods
.method public final change(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch$$ExternalSyntheticLambda1;->f$2:Lcom/brakefield/infinitestudio/ui/components/OnChange;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->lambda$toggle$0$com-brakefield-infinitestudio-apis-pixabay-SafeSearch(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/components/OnChange;Ljava/lang/Boolean;)V

    return-void
.end method
