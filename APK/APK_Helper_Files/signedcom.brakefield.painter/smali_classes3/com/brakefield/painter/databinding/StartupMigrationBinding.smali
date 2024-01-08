.class public final Lcom/brakefield/painter/databinding/StartupMigrationBinding;
.super Ljava/lang/Object;
.source "StartupMigrationBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final centerVerticalGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final continueButton:Landroid/widget/Button;

.field public final group1:Landroidx/constraintlayout/widget/Group;

.field public final group2:Landroidx/constraintlayout/widget/Group;

.field public final learnMoreButton:Landroid/widget/Button;

.field public final messageLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final progressBar:Landroid/widget/ProgressBar;

.field public final progressLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/Button;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Group;Landroid/widget/Button;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/ProgressBar;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    iput-object p2, p0, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->centerVerticalGuideline:Landroidx/constraintlayout/widget/Guideline;

    .line 57
    iput-object p3, p0, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->continueButton:Landroid/widget/Button;

    .line 58
    iput-object p4, p0, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->group1:Landroidx/constraintlayout/widget/Group;

    .line 59
    iput-object p5, p0, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->group2:Landroidx/constraintlayout/widget/Group;

    .line 60
    iput-object p6, p0, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->learnMoreButton:Landroid/widget/Button;

    .line 61
    iput-object p7, p0, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->messageLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 62
    iput-object p8, p0, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 63
    iput-object p9, p0, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->progressLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/StartupMigrationBinding;
    .locals 12

    const v0, 0x7f0a0103

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0160

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    const v0, 0x7f0a027a

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/widget/Group;

    if-eqz v6, :cond_0

    const v0, 0x7f0a027b

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/widget/Group;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0310

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0391

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0464

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ProgressBar;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0467

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v11, :cond_0

    .line 141
    new-instance v0, Lcom/brakefield/painter/databinding/StartupMigrationBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/brakefield/painter/databinding/StartupMigrationBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/Button;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Group;Landroid/widget/Button;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/ProgressBar;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    return-object v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 146
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x0

    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/guides/DR/isVGwxqXMxDjgS;->tkleoZKaKc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/StartupMigrationBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/StartupMigrationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/StartupMigrationBinding;
    .locals 2

    const v0, 0x7f0d0139

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/StartupMigrationBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/brakefield/painter/databinding/StartupMigrationBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
