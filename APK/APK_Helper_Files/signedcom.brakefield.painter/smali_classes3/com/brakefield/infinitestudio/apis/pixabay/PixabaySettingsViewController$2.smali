.class Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$2;
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


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$2;->this$0:Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;

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

    .line 64
    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$2;->this$0:Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->access$000(Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;)Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->setOrientation(I)V

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
