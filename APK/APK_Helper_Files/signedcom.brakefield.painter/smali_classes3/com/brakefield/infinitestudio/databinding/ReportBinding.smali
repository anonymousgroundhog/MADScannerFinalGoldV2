.class public final Lcom/brakefield/infinitestudio/databinding/ReportBinding;
.super Ljava/lang/Object;
.source "ReportBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final editMessage:Landroid/widget/EditText;

.field public final messageButton:Landroid/widget/Button;

.field public final messageButtonRow:Landroid/widget/TableRow;

.field public final messageEditRow:Landroid/widget/TableRow;

.field public final reasonSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

.field private final rootView:Landroid/widget/TableLayout;


# direct methods
.method private constructor <init>(Landroid/widget/TableLayout;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/TableRow;Landroid/widget/TableRow;Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/brakefield/infinitestudio/databinding/ReportBinding;->rootView:Landroid/widget/TableLayout;

    .line 44
    iput-object p2, p0, Lcom/brakefield/infinitestudio/databinding/ReportBinding;->editMessage:Landroid/widget/EditText;

    .line 45
    iput-object p3, p0, Lcom/brakefield/infinitestudio/databinding/ReportBinding;->messageButton:Landroid/widget/Button;

    .line 46
    iput-object p4, p0, Lcom/brakefield/infinitestudio/databinding/ReportBinding;->messageButtonRow:Landroid/widget/TableRow;

    .line 47
    iput-object p5, p0, Lcom/brakefield/infinitestudio/databinding/ReportBinding;->messageEditRow:Landroid/widget/TableRow;

    .line 48
    iput-object p6, p0, Lcom/brakefield/infinitestudio/databinding/ReportBinding;->reasonSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/ReportBinding;
    .locals 9

    .line 78
    sget v0, Lcom/brakefield/infinitestudio/R$id;->edit_message:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 84
    sget v0, Lcom/brakefield/infinitestudio/R$id;->message_button:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 90
    sget v0, Lcom/brakefield/infinitestudio/R$id;->message_button_row:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TableRow;

    if-eqz v6, :cond_0

    .line 96
    sget v0, Lcom/brakefield/infinitestudio/R$id;->message_edit_row:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TableRow;

    if-eqz v7, :cond_0

    .line 102
    sget v0, Lcom/brakefield/infinitestudio/R$id;->reason_spinner:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    if-eqz v8, :cond_0

    .line 108
    new-instance v0, Lcom/brakefield/infinitestudio/databinding/ReportBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/TableLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/brakefield/infinitestudio/databinding/ReportBinding;-><init>(Landroid/widget/TableLayout;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/TableRow;Landroid/widget/TableRow;Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;)V

    return-object v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/ReportBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-static {p0, v0, v1}, Lcom/brakefield/infinitestudio/databinding/ReportBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/ReportBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/ReportBinding;
    .locals 2

    .line 65
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->report:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/databinding/ReportBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/ReportBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/databinding/ReportBinding;->getRoot()Landroid/widget/TableLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/TableLayout;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/brakefield/infinitestudio/databinding/ReportBinding;->rootView:Landroid/widget/TableLayout;

    return-object v0
.end method
