.class public Lcom/brakefield/infinitestudio/ImportOptions;
.super Ljava/lang/Object;
.source "ImportOptions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showOptions(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-static {p0, p1, v0, p2, p3}, Lcom/brakefield/infinitestudio/ImportOptions;->showOptions(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/infinitestudio/MenuOption;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;)V

    return-void
.end method

.method public static showOptions(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/infinitestudio/MenuOption;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;)V
    .locals 5

    .line 19
    invoke-virtual {p3, p4}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->setCallback(Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;)V

    .line 21
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v0, Lcom/brakefield/infinitestudio/CustomDialog;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    sget v2, Lcom/brakefield/infinitestudio/R$string;->gallery:I

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/brakefield/infinitestudio/R$drawable;->gallery:I

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/brakefield/infinitestudio/ImportOptions$$ExternalSyntheticLambda0;

    invoke-direct {v4, p3}, Lcom/brakefield/infinitestudio/ImportOptions$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    sget v2, Lcom/brakefield/infinitestudio/R$string;->camera:I

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/brakefield/infinitestudio/R$drawable;->camera_2:I

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/brakefield/infinitestudio/ImportOptions$$ExternalSyntheticLambda1;

    invoke-direct {v4, p3}, Lcom/brakefield/infinitestudio/ImportOptions$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    sget v2, Lcom/brakefield/infinitestudio/R$string;->files:I

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/brakefield/infinitestudio/R$drawable;->folder:I

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/brakefield/infinitestudio/ImportOptions$$ExternalSyntheticLambda2;

    invoke-direct {v4, p3}, Lcom/brakefield/infinitestudio/ImportOptions$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    sget v2, Lcom/brakefield/infinitestudio/R$string;->search:I

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/brakefield/infinitestudio/R$drawable;->search:I

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/brakefield/infinitestudio/ImportOptions$$ExternalSyntheticLambda3;

    invoke-direct {v4, p3}, Lcom/brakefield/infinitestudio/ImportOptions$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-static {}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity;->getClippings()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    sget v2, Lcom/brakefield/infinitestudio/R$string;->clipboard:I

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/brakefield/infinitestudio/R$drawable;->clipboard:I

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/brakefield/infinitestudio/ImportOptions$$ExternalSyntheticLambda4;

    invoke-direct {v4, p3}, Lcom/brakefield/infinitestudio/ImportOptions$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 34
    new-instance p3, Lcom/brakefield/infinitestudio/MenuOption;

    iget-object v1, p2, Lcom/brakefield/infinitestudio/MenuOption;->name:Ljava/lang/String;

    iget v2, p2, Lcom/brakefield/infinitestudio/MenuOption;->resId:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/brakefield/infinitestudio/ImportOptions$$ExternalSyntheticLambda5;

    invoke-direct {v3, p2}, Lcom/brakefield/infinitestudio/ImportOptions$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/infinitestudio/MenuOption;)V

    invoke-direct {p3, v1, v2, v3}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {v0, p0, p1, p4}, Lcom/brakefield/infinitestudio/CustomDialog;->showDropDown(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)Landroid/widget/PopupWindow;

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/CustomDialog;->show()V

    .line 41
    invoke-virtual {v0, p4}, Lcom/brakefield/infinitestudio/CustomDialog;->setOptions(Ljava/util/List;)V

    :goto_0
    return-void
.end method
