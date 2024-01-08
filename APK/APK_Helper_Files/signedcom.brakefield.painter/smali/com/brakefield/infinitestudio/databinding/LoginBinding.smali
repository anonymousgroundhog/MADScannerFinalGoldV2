.class public final Lcom/brakefield/infinitestudio/databinding/LoginBinding;
.super Ljava/lang/Object;
.source "LoginBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnLinkToRegisterScreen:Landroid/widget/Button;

.field public final editEmail:Landroid/widget/EditText;

.field public final editName:Landroid/widget/EditText;

.field public final editPassword:Landroid/widget/EditText;

.field public final editPasswordConfirm:Landroid/widget/EditText;

.field public final emailImage:Landroid/widget/ImageView;

.field public final loginButton:Landroid/widget/Button;

.field public final loginProgress:Lcom/brakefield/infinitestudio/ui/CircleProgress;

.field public final nameImage:Landroid/widget/ImageView;

.field public final nameRow:Landroid/widget/TableRow;

.field public final nameSeparator:Landroid/widget/TableRow;

.field public final passwordConfirmImage:Landroid/widget/ImageView;

.field public final passwordConfirmRow:Landroid/widget/TableRow;

.field public final passwordConfirmSeparator:Landroid/widget/TableRow;

.field public final passwordImage:Landroid/widget/ImageView;

.field public final passwordResetButton:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/Button;Lcom/brakefield/infinitestudio/ui/CircleProgress;Landroid/widget/ImageView;Landroid/widget/TableRow;Landroid/widget/TableRow;Landroid/widget/ImageView;Landroid/widget/TableRow;Landroid/widget/TableRow;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 83
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->rootView:Landroid/widget/FrameLayout;

    move-object v1, p2

    .line 84
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->btnLinkToRegisterScreen:Landroid/widget/Button;

    move-object v1, p3

    .line 85
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->editEmail:Landroid/widget/EditText;

    move-object v1, p4

    .line 86
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->editName:Landroid/widget/EditText;

    move-object v1, p5

    .line 87
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->editPassword:Landroid/widget/EditText;

    move-object v1, p6

    .line 88
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->editPasswordConfirm:Landroid/widget/EditText;

    move-object v1, p7

    .line 89
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->emailImage:Landroid/widget/ImageView;

    move-object v1, p8

    .line 90
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->loginButton:Landroid/widget/Button;

    move-object v1, p9

    .line 91
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->loginProgress:Lcom/brakefield/infinitestudio/ui/CircleProgress;

    move-object v1, p10

    .line 92
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->nameImage:Landroid/widget/ImageView;

    move-object v1, p11

    .line 93
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->nameRow:Landroid/widget/TableRow;

    move-object v1, p12

    .line 94
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->nameSeparator:Landroid/widget/TableRow;

    move-object v1, p13

    .line 95
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->passwordConfirmImage:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 96
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->passwordConfirmRow:Landroid/widget/TableRow;

    move-object/from16 v1, p15

    .line 97
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->passwordConfirmSeparator:Landroid/widget/TableRow;

    move-object/from16 v1, p16

    .line 98
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->passwordImage:Landroid/widget/ImageView;

    move-object/from16 v1, p17

    .line 99
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->passwordResetButton:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/LoginBinding;
    .locals 21

    move-object/from16 v0, p0

    .line 129
    sget v1, Lcom/brakefield/infinitestudio/R$id;->btnLinkToRegisterScreen:I

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 135
    sget v1, Lcom/brakefield/infinitestudio/R$id;->edit_email:I

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_0

    .line 141
    sget v1, Lcom/brakefield/infinitestudio/R$id;->edit_name:I

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 147
    sget v1, Lcom/brakefield/infinitestudio/R$id;->edit_password:I

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    .line 153
    sget v1, Lcom/brakefield/infinitestudio/R$id;->edit_password_confirm:I

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/EditText;

    if-eqz v9, :cond_0

    .line 159
    sget v1, Lcom/brakefield/infinitestudio/R$id;->email_image:I

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 165
    sget v1, Lcom/brakefield/infinitestudio/R$id;->login_button:I

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/Button;

    if-eqz v11, :cond_0

    .line 171
    sget v1, Lcom/brakefield/infinitestudio/R$id;->login_progress:I

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/brakefield/infinitestudio/ui/CircleProgress;

    if-eqz v12, :cond_0

    .line 177
    sget v1, Lcom/brakefield/infinitestudio/R$id;->name_image:I

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    .line 183
    sget v1, Lcom/brakefield/infinitestudio/R$id;->name_row:I

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TableRow;

    if-eqz v14, :cond_0

    .line 189
    sget v1, Lcom/brakefield/infinitestudio/R$id;->name_separator:I

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TableRow;

    if-eqz v15, :cond_0

    .line 195
    sget v1, Lcom/brakefield/infinitestudio/R$id;->password_confirm_image:I

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    .line 201
    sget v1, Lcom/brakefield/infinitestudio/R$id;->password_confirm_row:I

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TableRow;

    if-eqz v17, :cond_0

    .line 207
    sget v1, Lcom/brakefield/infinitestudio/R$id;->password_confirm_separator:I

    .line 208
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TableRow;

    if-eqz v18, :cond_0

    .line 213
    sget v1, Lcom/brakefield/infinitestudio/R$id;->password_image:I

    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/ImageView;

    if-eqz v19, :cond_0

    .line 219
    sget v1, Lcom/brakefield/infinitestudio/R$id;->password_reset_button:I

    .line 220
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 225
    new-instance v1, Lcom/brakefield/infinitestudio/databinding/LoginBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v3 .. v20}, Lcom/brakefield/infinitestudio/databinding/LoginBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/Button;Lcom/brakefield/infinitestudio/ui/CircleProgress;Landroid/widget/ImageView;Landroid/widget/TableRow;Landroid/widget/TableRow;Landroid/widget/ImageView;Landroid/widget/TableRow;Landroid/widget/TableRow;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v1

    .line 230
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/LoginBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-static {p0, v0, v1}, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/LoginBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/LoginBinding;
    .locals 2

    .line 116
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->login:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 118
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 120
    :cond_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/LoginBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/brakefield/infinitestudio/databinding/LoginBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
