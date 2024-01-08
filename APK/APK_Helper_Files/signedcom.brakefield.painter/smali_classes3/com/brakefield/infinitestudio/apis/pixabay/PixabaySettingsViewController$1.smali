.class Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$1;
.super Ljava/lang/Object;
.source "PixabaySettingsViewController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->setupFilterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$1;->this$0:Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$1;->val$prefs:Landroid/content/SharedPreferences;

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

    .line 50
    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$1;->this$0:Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->access$000(Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;)Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->setType(I)V

    .line 51
    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "PREF_IMAGE_SEARCH_TYPE"

    .line 52
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

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
