.class public Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "SaveViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/SaveViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;)Lcom/brakefield/painter/databinding/SaveViewControllerBinding;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;->binding:Lcom/brakefield/painter/databinding/SaveViewControllerBinding;

    return-object p0
.end method

.method static synthetic lambda$promptSave$0(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 59
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$promptSave$1(Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Runnable;)V
    .locals 1

    .line 58
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/SimpleUI;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$promptSave$3(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 68
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    if-eqz p1, :cond_1

    .line 69
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method static synthetic lambda$promptSave$4(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 80
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$promptSave$5(Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Runnable;)V
    .locals 1

    .line 79
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/SimpleUI;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$promptSave$8(Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    const/4 p1, -0x1

    .line 133
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Landroid/widget/Button;->callOnClick()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method synthetic lambda$promptSave$2$com-brakefield-painter-ui-viewcontrollers-SaveViewController(Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 56
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;->binding:Lcom/brakefield/painter/databinding/SaveViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/SaveViewControllerBinding;->editName:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    .line 57
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 58
    :cond_0
    new-instance p4, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda7;

    invoke-direct {p4, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Runnable;)V

    sput-object p4, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveListener:Ljava/lang/Runnable;

    const/4 p2, 0x1

    .line 61
    sput-boolean p2, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsSaveProject:Z

    .line 62
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 63
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$promptSave$6$com-brakefield-painter-ui-viewcontrollers-SaveViewController(Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Runnable;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 77
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;->binding:Lcom/brakefield/painter/databinding/SaveViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/SaveViewControllerBinding;->editName:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    .line 78
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance p4, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda6;

    invoke-direct {p4, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Runnable;)V

    sput-object p4, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveListener:Ljava/lang/Runnable;

    const/4 p2, 0x1

    .line 82
    sput-boolean p2, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsSaveProject:Z

    .line 83
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 84
    invoke-virtual {p3}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$promptSave$7$com-brakefield-painter-ui-viewcontrollers-SaveViewController(Landroidx/appcompat/app/AlertDialog;Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 1

    .line 0
    const/4 p4, -0x1

    .line 75
    invoke-virtual {p1, p4}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p4

    .line 76
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Runnable;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public promptSave(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3

    .line 39
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->isDemoUser()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 40
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    .line 44
    :cond_1
    new-instance v0, Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentProject()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;-><init>(J)V

    .line 45
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "Untitled"

    .line 48
    :cond_2
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v1, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/painter/databinding/SaveViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/SaveViewControllerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;->binding:Lcom/brakefield/painter/databinding/SaveViewControllerBinding;

    .line 52
    iget-object p1, p1, Lcom/brakefield/painter/databinding/SaveViewControllerBinding;->editName:Landroid/widget/EditText;

    if-nez v0, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 54
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;->binding:Lcom/brakefield/painter/databinding/SaveViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/SaveViewControllerBinding;->getRoot()Landroid/widget/TableLayout;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const p1, 0x7f120a60

    .line 55
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2, p4}, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    if-eqz p3, :cond_4

    const p1, 0x7f120112

    .line 67
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p3, p4}, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 73
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 74
    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;Landroidx/appcompat/app/AlertDialog;Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 87
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    const/4 p2, -0x1

    .line 90
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    .line 92
    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;->binding:Lcom/brakefield/painter/databinding/SaveViewControllerBinding;

    iget-object p3, p3, Lcom/brakefield/painter/databinding/SaveViewControllerBinding;->editName:Landroid/widget/EditText;

    new-instance p4, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$1;

    invoke-direct {p4, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;Landroid/widget/Button;)V

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;->binding:Lcom/brakefield/painter/databinding/SaveViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/SaveViewControllerBinding;->editName:Landroid/widget/EditText;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/brakefield/infinitestudio/ProjectGallery;->getNewProjectName()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_5
    sget-object p3, Lcom/brakefield/infinitestudio/Main;->projectName:Ljava/lang/String;

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController;->binding:Lcom/brakefield/painter/databinding/SaveViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/SaveViewControllerBinding;->editName:Landroid/widget/EditText;

    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda5;

    invoke-direct {p3, p1}, Lcom/brakefield/painter/ui/viewcontrollers/SaveViewController$$ExternalSyntheticLambda5;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method
