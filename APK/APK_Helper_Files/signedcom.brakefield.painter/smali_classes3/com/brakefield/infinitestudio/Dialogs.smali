.class public Lcom/brakefield/infinitestudio/Dialogs;
.super Ljava/lang/Object;
.source "Dialogs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getHexadecimalInputFilter()Landroid/text/InputFilter;
    .locals 1

    .line 121
    new-instance v0, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda2;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$getHexadecimalInputFilter$7(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    const-string p3, "^\\p{XDigit}+$"

    .line 122
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p3

    .line 123
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge p1, p2, :cond_2

    .line 125
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    invoke-static {p5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p5

    const-string v0, ""

    if-nez p5, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    invoke-static {p5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p5

    if-nez p5, :cond_0

    return-object v0

    .line 126
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p5

    .line 127
    invoke-virtual {p5}, Ljava/util/regex/Matcher;->matches()Z

    move-result p5

    if-nez p5, :cond_1

    return-object v0

    .line 128
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$showDecimalNumberInputDialog$4(Lcom/brakefield/infinitestudio/ui/components/OnChange;Ljava/lang/String;)V
    .locals 0

    .line 99
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/brakefield/infinitestudio/ui/components/OnChange;->change(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic lambda$showHexadecimalInputNumberDialog$6(Lcom/brakefield/infinitestudio/ui/components/OnChange;Ljava/lang/String;)V
    .locals 3

    const-string v0, "#"

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    return-void

    .line 114
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/brakefield/infinitestudio/ui/components/OnChange;->change(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic lambda$showInputDialog$0(Lcom/brakefield/infinitestudio/ui/components/OnChange;Lcom/brakefield/infinitestudio/databinding/RenameBinding;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 61
    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/RenameBinding;->editName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/brakefield/infinitestudio/ui/components/OnChange;->change(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$showInputDialog$1(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x6

    const/4 p4, 0x0

    if-ne p3, p2, :cond_0

    .line 73
    invoke-interface {p0, p1, p4}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 74
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p4
.end method

.method static synthetic lambda$showNumberInputDialog$2(Lcom/brakefield/infinitestudio/ui/components/OnChange;Ljava/lang/String;)V
    .locals 0

    .line 87
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/brakefield/infinitestudio/ui/components/OnChange;->change(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic lambda$showSignedDecimalNumberInputDialog$5(Lcom/brakefield/infinitestudio/ui/components/OnChange;Ljava/lang/String;)V
    .locals 0

    .line 105
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/brakefield/infinitestudio/ui/components/OnChange;->change(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic lambda$showSignedNumberInputDialog$3(Lcom/brakefield/infinitestudio/ui/components/OnChange;Ljava/lang/String;)V
    .locals 0

    .line 93
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/brakefield/infinitestudio/ui/components/OnChange;->change(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static showAlert(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 38
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 40
    invoke-static {p2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 41
    invoke-static {p3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public static showAlert(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 27
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static showAlert(Landroid/content/Context;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 33
    invoke-static {p2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 34
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public static showDecimalNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/brakefield/infinitestudio/ui/components/OnChange<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    const/16 p3, 0x2002

    invoke-static {p0, p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showInputDialog(Landroid/content/Context;ILjava/lang/String;ILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method public static showHexadecimalInputNumberDialog(Landroid/content/Context;ILjava/lang/String;ILcom/brakefield/infinitestudio/ui/components/OnChange;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/brakefield/infinitestudio/ui/components/OnChange<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/high16 v3, 0x80000

    const/4 v0, 0x2

    new-array v4, v0, [Landroid/text/InputFilter;

    const/4 v0, 0x0

    .line 111
    invoke-static {}, Lcom/brakefield/infinitestudio/Dialogs;->getHexadecimalInputFilter()Landroid/text/InputFilter;

    move-result-object v1

    aput-object v1, v4, v0

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v0, p3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p3, 0x1

    aput-object v0, v4, p3

    new-instance v5, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda3;

    invoke-direct {v5, p4}, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/Dialogs;->showInputDialog(Landroid/content/Context;ILjava/lang/String;I[Landroid/text/InputFilter;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method private static showInputDialog(Landroid/content/Context;ILjava/lang/String;ILcom/brakefield/infinitestudio/ui/components/OnChange;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/brakefield/infinitestudio/ui/components/OnChange<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 46
    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/Dialogs;->showInputDialog(Landroid/content/Context;ILjava/lang/String;I[Landroid/text/InputFilter;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method private static showInputDialog(Landroid/content/Context;ILjava/lang/String;I[Landroid/text/InputFilter;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "I[",
            "Landroid/text/InputFilter;",
            "Lcom/brakefield/infinitestudio/ui/components/OnChange<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-static {p0}, Lcom/brakefield/infinitestudio/databinding/RenameBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/RenameBinding;

    move-result-object p0

    .line 54
    iget-object v1, p0, Lcom/brakefield/infinitestudio/databinding/RenameBinding;->name:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_0

    .line 56
    iget-object p1, p0, Lcom/brakefield/infinitestudio/databinding/RenameBinding;->editName:Landroid/widget/EditText;

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/databinding/RenameBinding;->editName:Landroid/widget/EditText;

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 58
    iget-object p1, p0, Lcom/brakefield/infinitestudio/databinding/RenameBinding;->editName:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Lcom/brakefield/infinitestudio/databinding/RenameBinding;->editName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    .line 61
    new-instance p1, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda7;

    invoke-direct {p1, p5, p0}, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;Lcom/brakefield/infinitestudio/databinding/RenameBinding;)V

    .line 63
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/databinding/RenameBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 64
    sget p2, Lcom/brakefield/infinitestudio/R$string;->ok:I

    invoke-static {p2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 65
    sget p2, Lcom/brakefield/infinitestudio/R$string;->cancel:I

    invoke-static {p2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p2

    .line 68
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    const/4 p4, 0x4

    invoke-virtual {p3, p4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 69
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 71
    iget-object p0, p0, Lcom/brakefield/infinitestudio/databinding/RenameBinding;->editName:Landroid/widget/EditText;

    new-instance p3, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda8;

    invoke-direct {p3, p1, p2}, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda8;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p0, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public static showNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/brakefield/infinitestudio/ui/components/OnChange<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    const/4 p3, 0x2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showInputDialog(Landroid/content/Context;ILjava/lang/String;ILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method public static showSignedDecimalNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/brakefield/infinitestudio/ui/components/OnChange<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda6;

    invoke-direct {v0, p3}, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    const/16 p3, 0x3002

    invoke-static {p0, p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showInputDialog(Landroid/content/Context;ILjava/lang/String;ILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method public static showSignedNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/brakefield/infinitestudio/ui/components/OnChange<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda4;

    invoke-direct {v0, p3}, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    const/16 p3, 0x1002

    invoke-static {p0, p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showInputDialog(Landroid/content/Context;ILjava/lang/String;ILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method public static showTextInputDialog(Landroid/content/Context;ILjava/lang/String;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/brakefield/infinitestudio/ui/components/OnChange<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda5;

    invoke-direct {v0, p3}, Lcom/brakefield/infinitestudio/Dialogs$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showInputDialog(Landroid/content/Context;ILjava/lang/String;ILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method
