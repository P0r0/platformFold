.class public Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;
.super Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/content/res/Resources;

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/os/HandlerThread;

.field private k:Lcom/vivo/sdkplugin/activity/az;

.field private l:Landroid/os/Handler;

.field private m:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/Button;

.field private u:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->d:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->e:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->f:Landroid/content/res/Resources;

    iput v1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->g:I

    iput v1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->h:I

    iput v1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->i:I

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->j:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->k:Lcom/vivo/sdkplugin/activity/az;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->l:Landroid/os/Handler;

    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->u:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;ZLjava/lang/String;)I
    .registers 4

    invoke-static {p1, p2}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;ZLjava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x1

    invoke-static {v0, p2, p3}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->u:Landroid/content/Context;

    const-string v1, "drawable"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static a(ZLjava/lang/String;)I
    .registers 7

    const/4 v4, 0x6

    const/4 v0, 0x4

    const-string v1, "ChangePassWordActivityLog"

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
    const-string v0, "ChangePassWordActivityLog"

    const-string v1, "PASSWORD_FORMAT_CHARACTER_WRONG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    goto :goto_1f

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f
.end method

.method private static a(ZLjava/lang/String;Ljava/lang/String;)I
    .registers 7

    const/4 v1, 0x6

    const/4 v0, 0x4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    if-eqz p0, :cond_c

    const/16 v0, 0x8

    :cond_c
    :goto_c
    return v0

    :cond_d
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    if-eqz p0, :cond_c

    move v0, v1

    goto :goto_c

    :cond_17
    if-lt v2, v1, :cond_1d

    const/16 v3, 0x10

    if-le v2, v3, :cond_25

    :cond_1d
    if-ge v2, v1, :cond_23

    if-eqz p0, :cond_c

    const/4 v0, 0x2

    goto :goto_c

    :cond_23
    const/4 v0, 0x3

    goto :goto_c

    :cond_25
    const/4 v0, 0x0

    :goto_26
    if-lt v0, v2, :cond_2a

    const/4 v0, 0x7

    goto :goto_c

    :cond_2a
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-le v1, v3, :cond_36

    const/16 v3, 0x7f

    if-le v1, v3, :cond_3f

    :cond_36
    const-string v0, "ChangePassWordActivityLog"

    const-string v1, "PASSWORD_FORMAT_CHARACTER_WRONG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    goto :goto_c

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Ljava/util/Map;
    .registers 9

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->m:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getUuid()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_58

    move v0, v4

    :goto_c
    const-string v1, ""

    if-ne v3, v1, :cond_5a

    move v1, v4

    :goto_11
    or-int/2addr v0, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->m:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountId()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uuid"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "oldPwd"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/MD5;->encode32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "newPwd"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/MD5;->encode32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "e"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_BIND_UPDATE_PASSWORD_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/aA;

    invoke-direct {v7, p0, v5}, Lcom/vivo/sdkplugin/activity/aA;-><init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3

    :cond_58
    move v0, v5

    goto :goto_c

    :cond_5a
    move v1, v5

    goto :goto_11

    :cond_5c
    move-object v0, v3

    goto :goto_1f
.end method

.method private a(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->showDialog(I)V

    :cond_9
    return-void
.end method

.method private a(ILandroid/widget/EditText;)V
    .registers 5

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_70

    :goto_4
    return-void

    :pswitch_5
    const-string v0, "vivo_password_empty_wrong"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_15
    const-string v0, "vivo_password_formatless_wrong"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_25
    const-string v0, "vivo_password_formatmore_wrong"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_35
    const-string v0, "vivo_password_format_character_wrong"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_45
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_4b
    const-string v0, "vivo_password_confirm_wrong"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_5b
    const-string v0, "vivo_confirm_password_empty_wrong"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_6b
    invoke-virtual {p2, v1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_5
        :pswitch_15
        :pswitch_25
        :pswitch_6b
        :pswitch_35
        :pswitch_4b
        :pswitch_45
        :pswitch_5b
    .end packed-switch
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;I)V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_5

    :goto_4
    return-void

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;ILandroid/widget/EditText;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(ILandroid/widget/EditText;)V

    return-void
.end method

.method private b(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->u:Landroid/content/Context;

    const-string v1, "string"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;I)V
    .registers 3

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->o:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->u:Landroid/content/Context;

    const-string v1, "id"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->m:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;I)V
    .registers 2

    iput p1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->g:I

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->n:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;I)V
    .registers 2

    iput p1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->h:I

    return-void
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->p:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;I)V
    .registers 2

    iput p1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->i:I

    return-void
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v4, 0x7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->o:Ljava/lang/String;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    :cond_45
    iput v1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->g:I

    :goto_47
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->n:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(ZLjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->h:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->p:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->i:I

    iget v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->g:I

    if-eq v0, v4, :cond_64

    iget v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->g:I

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a:Landroid/widget/EditText;

    invoke-direct {p0, v0, v3}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(ILandroid/widget/EditText;)V

    :cond_64
    iget v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->h:I

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->b:Landroid/widget/EditText;

    invoke-direct {p0, v0, v3}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(ILandroid/widget/EditText;)V

    iget v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->i:I

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->c:Landroid/widget/EditText;

    invoke-direct {p0, v0, v3}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(ILandroid/widget/EditText;)V

    iget v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->g:I

    if-ne v0, v4, :cond_d4

    iget v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->h:I

    if-ne v0, v4, :cond_d4

    iget v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->i:I

    if-ne v0, v4, :cond_d4

    move v0, v1

    :goto_7f
    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->j:Landroid/os/HandlerThread;

    if-nez v0, :cond_a0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "com.bbk.CHANGE_PASSWD"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->j:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/activity/az;

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->j:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/vivo/sdkplugin/activity/az;-><init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->k:Lcom/vivo/sdkplugin/activity/az;

    :cond_a0
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->l:Landroid/os/Handler;

    if-nez v0, :cond_ab

    new-instance v0, Lcom/vivo/sdkplugin/activity/aB;

    invoke-direct {v0, p0, v2}, Lcom/vivo/sdkplugin/activity/aB;-><init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->l:Landroid/os/Handler;

    :cond_ab
    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_c1

    const-string v0, "ChangePassWordActivityLog"

    const-string v1, "NetworkUtilities.CONNECTION_TYPE_NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(I)V

    :cond_bd
    :goto_bd
    return-void

    :cond_be
    iput v4, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->g:I

    goto :goto_47

    :cond_c1
    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(I)V

    iget v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->q:I

    if-ne v0, v1, :cond_ce

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->k:Lcom/vivo/sdkplugin/activity/az;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/az;->sendEmptyMessage(I)Z

    goto :goto_bd

    :cond_ce
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->k:Lcom/vivo/sdkplugin/activity/az;

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/activity/az;->sendEmptyMessage(I)Z

    goto :goto_bd

    :cond_d4
    move v0, v2

    goto :goto_7f
.end method

.method static synthetic h(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->g:I

    return v0
.end method

.method static synthetic j(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V
    .registers 3

    const/4 v1, 0x7

    iget v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->g:I

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->h:I

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->i:I

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->t:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->t:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_13
.end method

.method static synthetic k(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic l(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->h:I

    return v0
.end method

.method static synthetic m(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic n(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->i:I

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    packed-switch p1, :pswitch_data_c

    const-string v0, "ChangePassWordActivityLog"

    const-string v1, "Unsupport type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_a
    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x64
        :pswitch_a
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string v0, "change_password"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->u:Landroid/content/Context;

    const-string v2, "layout"

    invoke-static {v1, v2, v0}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->r:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleRightBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->t:Landroid/widget/Button;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    const-string v0, "old_password_layout"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->findViewById(I)Landroid/view/View;

    const-string v0, "old_password_input"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a:Landroid/widget/EditText;

    const-string v0, "new_password_input"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->b:Landroid/widget/EditText;

    const-string v0, "confirm_password_input"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->b:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->c:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->f:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->f:Landroid/content/res/Resources;

    const-string v1, "indicator_input_error"

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->d:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->f:Landroid/content/res/Resources;

    const-string v1, "indicator_input_pass"

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->s:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vivo/sdkplugin/activity/aq;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/aq;-><init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->r:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/ar;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/ar;-><init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->t:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/as;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/as;-><init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/at;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/at;-><init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/au;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/au;-><init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/av;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/av;-><init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/aw;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/aw;-><init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/ax;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/ax;-><init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/ay;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/ay;-><init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->m:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->q:I

    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    sparse-switch p1, :sswitch_data_34

    const-string v0, "ChangePassWordActivityLog"

    const-string v1, "Unsupport type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_e
    return-object v0

    :sswitch_f
    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_loading_string"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->getString(I)Ljava/lang/String;

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

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onDestroy()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->j:Landroid/os/HandlerThread;

    :cond_f
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x4

    if-ne p2, v0, :cond_22

    const-string v0, "ChangePassWordActivityLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKey,keyCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->j:Landroid/os/HandlerThread;

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

    const-string v0, "ChangePassWordActivityLog"

    const-string v1, "ChangePassWordActivity,onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
