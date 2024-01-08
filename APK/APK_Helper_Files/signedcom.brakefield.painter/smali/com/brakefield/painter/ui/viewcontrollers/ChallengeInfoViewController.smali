.class public Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "ChallengeInfoViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

.field private challenge:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

.field private dismissHandler:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method private getChallengePreview(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 82
    invoke-static {p1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getChallengePreviewURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;Ljava/lang/Runnable;)Landroid/view/View;
    .locals 0

    .line 22
    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->challenge:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

    .line 23
    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->dismissHandler:Ljava/lang/Runnable;

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->binding:Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

    .line 26
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->update()V

    .line 28
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->binding:Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    .line 29
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getScreenBackgroundColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object p1
.end method

.method synthetic lambda$update$0$com-brakefield-painter-ui-viewcontrollers-ChallengeInfoViewController(Landroid/view/View;)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->dismissHandler:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public update()V
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->challenge:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->challengeId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->getChallengePreview(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->binding:Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;->preview:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->binding:Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;->preview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 39
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getScreenBackgroundColor()I

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->binding:Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;->previewFade:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getBottomFadeGradient(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 42
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->binding:Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->challenge:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

    iget-object v1, v1, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->binding:Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;->shortDescriptionLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->challenge:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

    iget-object v1, v1, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->shortDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->binding:Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;->purposeDescription:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->challenge:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

    iget-object v1, v1, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->purpose:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->challenge:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->obstacles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->binding:Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;->constraintsSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->challenge:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->obstacles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    .line 53
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->challenge:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->obstacles:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;

    .line 55
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->binding:Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;->constraintIcon1:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 56
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->binding:Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;->constraintIcon1:Landroid/widget/ImageView;

    iget v4, v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;->icon:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->binding:Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;->constraintText1:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;->description:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->challenge:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->obstacles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    .line 63
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->challenge:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->obstacles:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;

    .line 65
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->binding:Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;->constraintIcon2:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 66
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->binding:Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;->constraintIcon2:Landroid/widget/ImageView;

    iget v2, v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;->icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->binding:Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;->constraintText2:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;->description:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->binding:Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;->constraint2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->binding:Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;->startButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;->binding:Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ChallengeInfoViewControllerBinding;->startButton:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
