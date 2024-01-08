.class public final synthetic Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/painter/FileImporter$UriHandler;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda27;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda27;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda27;->f$2:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final handleUri(Lcom/brakefield/painter/FileImporter$ImportUri;)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda27;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda27;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda27;->f$2:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->lambda$handleShareIn$30$com-brakefield-painter-ui-SimpleUI(Landroid/app/Activity;Landroid/net/Uri;Lcom/brakefield/painter/FileImporter$ImportUri;)V

    return-void
.end method
