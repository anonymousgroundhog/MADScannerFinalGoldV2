.class public Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "CreateProjectViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;,
        Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$Section;,
        Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;,
        Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;,
        Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;,
        Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$RenderingSection;,
        Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;,
        Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;,
        Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsFooterViewHolder;,
        Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetViewHolder;,
        Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;,
        Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$OnPresetSelected;
    }
.end annotation


# static fields
.field private static final PREF_CREATE_PAPER_COLOR:Ljava/lang/String; = "PREF_CREATE_PAPER_COLOR"

.field private static final PREF_CREATE_TIMELAPSE:Ljava/lang/String; = "PREF_CREATE_TIMELAPSE"

.field private static final PREF_CREATE_TIMELAPSE_SHOW_NAVIGATION:Ljava/lang/String; = "PREF_CREATE_TIMELAPSE_SHOW_NAVIGATION"

.field private static final PREF_CREATE_TIMELAPSE_VIDEO_SIZE:Ljava/lang/String; = "PREF_CREATE_TIMELAPSE_VIDEO_SIZE"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

.field private final canvasAnimator:Lcom/brakefield/painter/ZoomViewAnimator;

.field private importIntentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

.field private importedImage:Landroid/net/Uri;

.field private final observeAspectRatio:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final observeImportedImage:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final observePaperColor:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeRootWidth:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

.field private projectType:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

.field private res:Landroid/content/res/Resources;

.field private final sections:[Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$Section;

.field private ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 92
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    .line 110
    new-instance v0, Lcom/brakefield/painter/ZoomViewAnimator;

    invoke-direct {v0}, Lcom/brakefield/painter/ZoomViewAnimator;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->canvasAnimator:Lcom/brakefield/painter/ZoomViewAnimator;

    .line 112
    sget-object v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->BLANK:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->projectType:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->importedImage:Landroid/net/Uri;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$Section;

    .line 118
    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$1;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$DimensionsSection;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$1;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$1;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$RenderingSection;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$RenderingSection;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$1;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$TimelapseSection;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$1;)V

    const/4 v0, 0x4

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->sections:[Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$Section;

    .line 128
    new-instance v0, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)V

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->observeRootWidth:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 147
    new-instance v0, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->observeImportedImage:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    .line 148
    new-instance v0, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->observeAspectRatio:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    .line 149
    new-instance v0, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->observePaperColor:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    return-void
.end method

.method static synthetic access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->observeImportedImage:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->observeAspectRatio:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->observePaperColor:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Landroid/view/View;Z)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->adjustCanvasView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->res:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/ui/SimpleUI;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    return-object p0
.end method

.method static synthetic access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    return-object p0
.end method

.method static synthetic access$600(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->projectType:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    return-object p0
.end method

.method static synthetic access$602(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;)Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->projectType:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    return-object p1
.end method

.method static synthetic access$702(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->importedImage:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$800(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/infinitestudio/ImportIntentLaunchers;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->importIntentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    return-object p0
.end method

.method private adjustCanvasView(Landroid/view/View;Z)V
    .locals 2

    .line 334
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {p2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getWidthMeasurement()Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object p2

    invoke-virtual {p2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->inPixels()I

    move-result p2

    .line 335
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getHeightMeasurement()Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->inPixels()I

    move-result v0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 339
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 340
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setDimensionRatio(ILjava/lang/String;)V

    .line 342
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private changeProjectName(Landroid/widget/TextView;)V
    .locals 4

    .line 263
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 265
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/databinding/RenameBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/RenameBinding;

    move-result-object v1

    .line 267
    iget-object v2, v1, Lcom/brakefield/infinitestudio/databinding/RenameBinding;->editName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {v3}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v2, v1, Lcom/brakefield/infinitestudio/databinding/RenameBinding;->editName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    .line 270
    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v1, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Lcom/brakefield/infinitestudio/databinding/RenameBinding;Landroid/widget/TextView;)V

    .line 276
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/databinding/RenameBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const p1, 0x7f1209b7

    .line 277
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const p1, 0x7f12009e

    .line 278
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 280
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 283
    iget-object v0, v1, Lcom/brakefield/infinitestudio/databinding/RenameBinding;->editName:Landroid/widget/EditText;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda9;

    invoke-direct {v1, v2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda9;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method static synthetic lambda$changeProjectName$10(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x6

    const/4 p4, 0x0

    if-ne p3, p2, :cond_0

    .line 285
    invoke-interface {p0, p1, p4}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p4
.end method

.method static synthetic lambda$setupTitleBar$1(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 178
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->back(Landroid/app/Activity;)Z

    return-void
.end method

.method private setupTitleBar(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->back:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->back:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->back:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 182
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->titleBar:Landroid/view/View;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getScreenBackgroundColor()I

    move-result v1

    const v2, 0x3f666666    # 0.9f

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTopFadeGradient(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->createButton:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->createButton:Landroid/widget/Button;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 220
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->observeImportedImage:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->imageView:Landroid/widget/ImageView;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)V

    invoke-virtual {p1, p2, v0}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->addObserveChange(Ljava/lang/Object;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    .line 221
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->observeAspectRatio:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->canvasView:Landroidx/cardview/widget/CardView;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)V

    invoke-virtual {p1, p2, v0}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->addObserveChange(Ljava/lang/Object;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    .line 222
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->observePaperColor:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->canvasView:Landroidx/cardview/widget/CardView;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)V

    invoke-virtual {p1, p2, v0}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->addObserveChange(Ljava/lang/Object;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method


# virtual methods
.method getAdjustedCanvasScale(FF)F
    .locals 2

    .line 247
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMaster()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->getMaxResolution(Z)I

    move-result v0

    int-to-float v0, v0

    mul-float v1, p1, p2

    div-float/2addr v1, v0

    float-to-double v0, v1

    .line 250
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 251
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 252
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getMaxTextureSize()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 253
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 254
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method getCanvasDimensionsFor(FFF)Lcom/brakefield/painter/video/Dimensions;
    .locals 1

    .line 258
    new-instance v0, Lcom/brakefield/painter/video/Dimensions;

    div-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    div-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/brakefield/painter/video/Dimensions;-><init>(II)V

    return-object v0
.end method

.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)Landroid/view/View;
    .locals 3

    .line 153
    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    .line 154
    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->importIntentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    .line 155
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-static {p3}, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p3

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    .line 156
    new-instance p3, Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getNewProject()J

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;-><init>(J)V

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    const v0, 0x7f120a05

    .line 157
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCanvasWidth()I

    move-result v1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCanvasHeight()I

    move-result v2

    invoke-virtual {p3, v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setup(Ljava/lang/String;II)V

    .line 158
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->res:Landroid/content/res/Resources;

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->setupTitleBar(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 162
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->sections:[Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$Section;

    array-length p3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-object v1, p2, v0

    .line 163
    invoke-interface {v1, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$Section;->setup(Landroid/app/Activity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->loadPrefs(Landroid/app/Activity;)V

    .line 168
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

    .line 170
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    .line 171
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getScreenBackgroundColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object p1
.end method

.method public importImage(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 293
    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->importedImage:Landroid/net/Uri;

    if-eqz p2, :cond_1

    .line 295
    sget-object v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->IMAGE:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->projectType:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    .line 297
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 298
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 300
    :try_start_0
    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/FileManager;->resolveInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    .line 301
    :try_start_1
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 302
    iget p2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 303
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 304
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getWidthMeasurement()Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setPixels(I)V

    .line 305
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {p2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getHeightMeasurement()Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setPixels(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 306
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_0

    .line 300
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 307
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

    return-void
.end method

.method synthetic lambda$changeProjectName$9$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController(Lcom/brakefield/infinitestudio/databinding/RenameBinding;Landroid/widget/TextView;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 271
    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/RenameBinding;->editName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$new$0$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController(Ljava/lang/Integer;)V
    .locals 7

    .line 129
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v6}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 130
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 131
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x440c0000    # 560.0f

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    cmpl-float p1, p1, v0

    const/4 v0, 0x7

    const/16 v1, 0x8

    const v2, 0x7f0a04e9

    const/4 v3, 0x0

    if-lez p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->canvasView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v3}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 133
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->canvasViewInline:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->canvasViewInlineContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x43960000    # 300.0f

    .line 135
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v6, v2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 136
    invoke-virtual {v6, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->canvasView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 139
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->canvasViewInline:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v3}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 140
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->canvasViewInlineContainer:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 141
    invoke-virtual {v6, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 142
    invoke-virtual {v6, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    const v1, 0x7f0a04e9

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/high16 p1, 0x41800000    # 16.0f

    .line 143
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    float-to-int v5, p1

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 145
    :goto_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method synthetic lambda$setupTitleBar$2$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController(Landroid/view/View;)V
    .locals 0

    .line 183
    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->changeProjectName(Landroid/widget/TextView;)V

    return-void
.end method

.method synthetic lambda$setupTitleBar$3$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 7

    .line 199
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->canvasViewInline:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->canvasView:Landroidx/cardview/widget/CardView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->canvasViewInline:Landroidx/cardview/widget/CardView;

    :goto_0
    move-object v4, v0

    .line 200
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 201
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->importedImage:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getPaperColor()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 205
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->canvasAnimator:Lcom/brakefield/painter/ZoomViewAnimator;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/brakefield/painter/ZoomViewAnimator;->animateToEditor(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method synthetic lambda$setupTitleBar$4$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController(Landroid/view/View;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 1

    .line 198
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda11;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$setupTitleBar$5$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->projectType:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    sget-object v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->PATTERN:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {v0, v2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setIsPattern(Z)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getWidthMeasurement()Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->inPixels()I

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getHeightMeasurement()Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->inPixels()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    .line 194
    invoke-virtual {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->getAdjustedCanvasScale(FF)F

    move-result v3

    .line 195
    invoke-virtual {p0, v0, v1, v3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->getCanvasDimensionsFor(FFF)Lcom/brakefield/painter/video/Dimensions;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    iget v3, v0, Lcom/brakefield/painter/video/Dimensions;->width:I

    iget v0, v0, Lcom/brakefield/painter/video/Dimensions;->height:I

    invoke-virtual {v1, v3, v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setPixelDimensions(II)V

    .line 198
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Landroid/view/View;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    sput-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->newProjectListener:Ljava/lang/Runnable;

    .line 208
    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->importedImage:Landroid/net/Uri;

    if-eqz p3, :cond_1

    .line 209
    sput-object p3, Lcom/brakefield/painter/PainterGraphicsRenderer;->importImage:Landroid/net/Uri;

    .line 212
    :cond_1
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->savePrefs(Landroid/app/Activity;)V

    .line 214
    sput-boolean v2, Lcom/brakefield/painter/PainterGraphicsRenderer;->createProject:Z

    .line 216
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$setupTitleBar$6$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController(Landroid/net/Uri;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method

.method synthetic lambda$setupTitleBar$7$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController(Ljava/lang/Float;)V
    .locals 1

    .line 221
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->canvasView:Landroidx/cardview/widget/CardView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->adjustCanvasView(Landroid/view/View;Z)V

    return-void
.end method

.method synthetic lambda$setupTitleBar$8$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController(Ljava/lang/Integer;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->canvasView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    return-void
.end method

.method loadPrefs(Landroid/app/Activity;)V
    .locals 5

    .line 235
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "PREF_CREATE_PAPER_COLOR"

    const/4 v1, -0x1

    .line 236
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "PREF_CREATE_TIMELAPSE"

    const/4 v2, 0x1

    .line 237
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 238
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getTimelapseQuality()I

    move-result v2

    const-string v3, "PREF_CREATE_TIMELAPSE_VIDEO_SIZE"

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "PREF_CREATE_TIMELAPSE_SHOW_NAVIGATION"

    const/4 v4, 0x0

    .line 239
    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 240
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {v3, v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setPaperColor(I)V

    .line 241
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setTimelapseEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {v0, v2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setTimelapseQuality(I)V

    .line 243
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setTimelapseShowsUserNavigation(Z)V

    return-void
.end method

.method savePrefs(Landroid/app/Activity;)V
    .locals 2

    .line 226
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 227
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getPaperColor()I

    move-result v0

    const-string v1, "PREF_CREATE_PAPER_COLOR"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 228
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->isTimelapseEnabled()Z

    move-result v0

    const-string v1, "PREF_CREATE_TIMELAPSE"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 229
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getTimelapseQuality()I

    move-result v0

    const-string v1, "PREF_CREATE_TIMELAPSE_VIDEO_SIZE"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 230
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getTimelapseShowsUserNavigation()Z

    move-result v0

    const-string v1, "PREF_CREATE_TIMELAPSE_SHOW_NAVIGATION"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected setProjectType(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;)V
    .locals 1

    .line 314
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->projectType:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    .line 315
    sget-object v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->IMAGE:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 316
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->importedImage:Landroid/net/Uri;

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

    return-void
.end method

.method public update()V
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->observeRootWidth:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->binding:Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    invoke-virtual {v1}, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->observeImportedImage:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->importedImage:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->update(Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->observeAspectRatio:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getHeightMeasurement()Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue()F

    move-result v1

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getWidthMeasurement()Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->getValue()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->update(Ljava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->observePaperColor:Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->project:Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getPaperColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/ObserveMultiple;->update(Ljava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->sections:[Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$Section;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 328
    invoke-interface {v3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$Section;->updateSection()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
