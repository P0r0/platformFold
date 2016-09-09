.class public Lcom/vivo/sdkplugin/activity/SetpwdActivity;
.super Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/lang/String;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/content/res/Resources;

.field private g:I

.field private h:I

.field private i:Landroid/os/HandlerThread;

.field private j:Lcom/vivo/sdkplugin/activity/ej;

.field private k:Landroid/os/Handler;

.field private l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/util/Map;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/Button;

.field private v:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

.field private w:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->d:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->e:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->f:Landroid/content/res/Resources;

    iput v1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->g:I

    iput v1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->h:I

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->i:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->j:Lcom/vivo/sdkplugin/activity/ej;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->k:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->o:Z

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->r:Ljava/lang/String;

    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->v:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SetpwdActivity;ZLjava/lang/String;)I
    .registers 4

    invoke-static {p1, p2}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a(ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SetpwdActivity;ZLjava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x1

    invoke-static {v0, p2, p3}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a(ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static a(ZLjava/lang/String;)I
    .registers 7

    const/4 v4, 0x6

    const/4 v0, 0x4

    const-string v1, "SetPassWordActivityLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "passwordFinished="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_20

    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    if-lt v1, v4, :cond_26

    const/16 v2, 0x10

    if-le v1, v2, :cond_2e

    :cond_26
    if-ge v1, v4, :cond_2c

    if-eqz p0, :cond_1f

    const/4 v0, 0x2

    goto :goto_1f

    :cond_2c
    const/4 v0, 0x3

    goto :goto_1f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    if-lt v0, v1, :cond_33

    const/4 v0, 0x7

    goto :goto_1f

    :cond_33
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_3f

    const/16 v3, 0x7f

    if-le v2, v3, :cond_48

    :cond_3f
    const-string v0, "SetPassWordActivityLog"

    const-string v1, "PASSWORD_FORMAT_CHARACTER_WRONG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    goto :goto_1f

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f
.end method

.method private static a(ZLjava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    :cond_a
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    if-eqz p0, :cond_a

    const/4 v0, 0x6

    goto :goto_a

    :cond_15
    const/4 v0, 0x7

    goto :goto_a
.end method

.method private a(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->showDialog(I)V

    :cond_9
    return-void
.end method

.method private a(ILandroid/widget/EditText;)V
    .registers 6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_7e

    :goto_4
    return-void

    :pswitch_5
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "vivo_password_empty_wrong"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_1b
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "vivo_password_formatless_wrong"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_31
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "vivo_password_formatmore_wrong"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_47
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "vivo_password_format_character_wrong"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_5d
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_63
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "vivo_password_confirm_wrong"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_79
    invoke-virtual {p2, v1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1b
        :pswitch_31
        :pswitch_79
        :pswitch_47
        :pswitch_63
        :pswitch_5d
    .end packed-switch
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SetPassWordActivityLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "uuid="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "account"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->p:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pwd"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->q:Ljava/lang/String;

    if-eqz v0, :cond_77

    const-string v0, "code"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->q:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_REGISTE_SUBALL_URL:Ljava/lang/String;

    :goto_42
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getTempUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a:Ljava/lang/String;

    const-string v0, "SetPassWordActivityLog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "********LocalUUID, uuid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "uuid"

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    new-instance v7, Lcom/vivo/sdkplugin/activity/ek;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/activity/ek;-><init>(Lcom/vivo/sdkplugin/activity/SetpwdActivity;B)V

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-void

    :cond_77
    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_REGISTE_FINISHONEKEYREG_URL:Ljava/lang/String;

    goto :goto_42
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SetpwdActivity;I)V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_5

    :goto_4
    return-void

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SetpwdActivity;ILandroid/widget/EditText;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a(ILandroid/widget/EditText;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SetpwdActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->r:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SetpwdActivity;Ljava/util/Map;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->s:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SetpwdActivity;Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->o:Z

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/SetpwdActivity;I)V
    .registers 3

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/SetpwdActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->m:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->s:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/SetpwdActivity;I)V
    .registers 2

    iput p1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->g:I

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/SetpwdActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->n:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/SetpwdActivity;I)V
    .registers 2

    iput p1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->h:I

    return-void
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Lcom/vivo/sdkplugin/activity/SetpwdActivity;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->v:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    return-object v0
.end method

.method static synthetic h(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)V
    .registers 6

    const/4 v4, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a(ZLjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->g:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->n:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a(ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->h:I

    iget v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->g:I

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->b:Landroid/widget/EditText;

    invoke-direct {p0, v0, v3}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a(ILandroid/widget/EditText;)V

    iget v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->h:I

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->c:Landroid/widget/EditText;

    invoke-direct {p0, v0, v3}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a(ILandroid/widget/EditText;)V

    iget v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->g:I

    if-ne v0, v4, :cond_8d

    iget v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->h:I

    if-ne v0, v4, :cond_8d

    move v0, v1

    :goto_4c
    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->i:Landroid/os/HandlerThread;

    if-nez v0, :cond_6d

    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "com.bbk.SET_PASSWD"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->i:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/activity/ej;

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->i:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/vivo/sdkplugin/activity/ej;-><init>(Lcom/vivo/sdkplugin/activity/SetpwdActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->j:Lcom/vivo/sdkplugin/activity/ej;

    :cond_6d
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->k:Landroid/os/Handler;

    if-nez v0, :cond_78

    new-instance v0, Lcom/vivo/sdkplugin/activity/el;

    invoke-direct {v0, p0, v2}, Lcom/vivo/sdkplugin/activity/el;-><init>(Lcom/vivo/sdkplugin/activity/SetpwdActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->k:Landroid/os/Handler;

    :cond_78
    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_84

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a(I)V

    :cond_83
    :goto_83
    return-void

    :cond_84
    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->j:Lcom/vivo/sdkplugin/activity/ej;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/ej;->sendEmptyMessage(I)Z

    goto :goto_83

    :cond_8d
    move v0, v2

    goto :goto_4c
.end method

.method static synthetic i(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic j(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->g:I

    return v0
.end method

.method static synthetic l(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)V
    .registers 3

    const/4 v1, 0x7

    iget v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->g:I

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->h:I

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->u:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->u:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_f
.end method

.method static synthetic m(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic n(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->h:I

    return v0
.end method

.method static synthetic p(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->o:Z

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_register_phone_setpwd"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->t:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleRightBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->u:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "new_password_input"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "confirm_password_input"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->b:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->c:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->f:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->f:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "vivo_indicator_input_error"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->d:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->f:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "vivo_indicator_input_pass"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "read_protocol_textview"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->w:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_read_protocol"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->w:Landroid/widget/TextView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/ec;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/ec;-><init>(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->t:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/ed;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/ed;-><init>(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->u:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/ee;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/ee;-><init>(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/ef;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/ef;-><init>(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/eg;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/eg;-><init>(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/eh;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/eh;-><init>(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/ei;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/ei;-><init>(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->l:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->p:Ljava/lang/String;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->q:Ljava/lang/String;

    if-nez v0, :cond_196

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "account_name_input_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "account_name_input"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_196
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "vivo_set_password_label"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->setTitle(I)V

    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    sparse-switch p1, :sswitch_data_34

    const-string v0, "SetPassWordActivityLog"

    const-string v1, "Unsupport type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_e
    return-object v0

    :sswitch_f
    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_loading_string"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_e

    :sswitch_28
    new-instance v0, Lcom/vivo/sdkplugin/Utils/DialogUtil;

    invoke-direct {v0, p0, p0}, Lcom/vivo/sdkplugin/Utils/DialogUtil;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->createDialog(I)Landroid/app/AlertDialog;

    goto :goto_a

    nop

    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_f
        0x64 -> :sswitch_28
    .end sparse-switch
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onDestroy()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->i:Landroid/os/HandlerThread;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->i:Landroid/os/HandlerThread;

    :cond_f
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x4

    if-ne p2, v0, :cond_22

    const-string v0, "SetPassWordActivityLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKey,keyCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->i:Landroid/os/HandlerThread;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onResume()V

    const-string v0, "SetPassWordActivityLog"

    const-string v1, "SetPassWordActivity,onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public returnResult(Ljava/util/Map;Ljava/lang/String;)V
    .registers 8

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "LoginResult"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "account"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->p:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pwd"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "authtoken"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->r:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->setResult(ILandroid/content/Intent;)V

    return-void

    :cond_46
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method
