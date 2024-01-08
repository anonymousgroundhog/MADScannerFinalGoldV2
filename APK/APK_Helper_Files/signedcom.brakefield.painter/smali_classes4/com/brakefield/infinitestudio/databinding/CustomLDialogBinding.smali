.class public final Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;
.super Ljava/lang/Object;
.source "CustomLDialogBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttons:Landroid/widget/LinearLayout;

.field public final container:Landroid/widget/FrameLayout;

.field public final messageText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final negativeButton:Landroid/widget/Button;

.field public final neutralButton:Landroid/widget/Button;

.field public final panel:Landroid/widget/LinearLayout;

.field public final positiveButton:Landroid/widget/Button;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final titleText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/Button;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;->rootView:Landroid/widget/FrameLayout;

    .line 53
    iput-object p2, p0, Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;->buttons:Landroid/widget/LinearLayout;

    .line 54
    iput-object p3, p0, Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;->container:Landroid/widget/FrameLayout;

    .line 55
    iput-object p4, p0, Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;->messageText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 56
    iput-object p5, p0, Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;->negativeButton:Landroid/widget/Button;

    .line 57
    iput-object p6, p0, Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;->neutralButton:Landroid/widget/Button;

    .line 58
    iput-object p7, p0, Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;->panel:Landroid/widget/LinearLayout;

    .line 59
    iput-object p8, p0, Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;->positiveButton:Landroid/widget/Button;

    .line 60
    iput-object p9, p0, Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;->titleText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;
    .locals 12

    .line 90
    sget v0, Lcom/brakefield/infinitestudio/R$id;->buttons:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 96
    sget v0, Lcom/brakefield/infinitestudio/R$id;->container:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 102
    sget v0, Lcom/brakefield/infinitestudio/R$id;->message_text:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v6, :cond_0

    .line 108
    sget v0, Lcom/brakefield/infinitestudio/R$id;->negative_button:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    .line 114
    sget v0, Lcom/brakefield/infinitestudio/R$id;->neutral_button:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    .line 120
    sget v0, Lcom/brakefield/infinitestudio/R$id;->panel:I

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 126
    sget v0, Lcom/brakefield/infinitestudio/R$id;->positive_button:I

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/Button;

    if-eqz v10, :cond_0

    .line 132
    sget v0, Lcom/brakefield/infinitestudio/R$id;->title_text:I

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v11, :cond_0

    .line 138
    new-instance v0, Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/Button;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    return-object v0

    .line 141
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 142
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x0

    sget-object v1, Lorg/checkerframework/checker/propkey/qual/lW/MjAmnOQWs;->AWSU:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-static {p0, v0, v1}, Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;
    .locals 2

    .line 77
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->custom_l_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    :cond_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/brakefield/infinitestudio/databinding/CustomLDialogBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
