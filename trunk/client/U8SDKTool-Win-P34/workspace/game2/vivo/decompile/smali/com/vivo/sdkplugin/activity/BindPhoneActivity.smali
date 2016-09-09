.class public Lcom/vivo/sdkplugin/activity/BindPhoneActivity;
.super Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Landroid/content/res/Resources;

.field private i:Landroid/os/HandlerThread;

.field private j:Lcom/vivo/sdkplugin/activity/O;

.field private k:Landroid/os/Handler;

.field private l:Ljava/lang/String;

.field private m:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private n:Lcom/vivo/sdkplugin/activity/S;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/Button;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;-><init>()V

    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->g:Landroid/content/Context;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->i:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->j:Lcom/vivo/sdkplugin/activity/O;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->k:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->g:Landroid/content/Context;

    const-string v1, "drawable"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Ljava/util/Map;
    .registers 9

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->m:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getUuid()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_65

    move v0, v4

    :goto_c
    const-string v1, ""

    if-ne v3, v1, :cond_67

    move v1, v4

    :goto_11
    or-int/2addr v0, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->m:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountId()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->l:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v6, "uuid"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "newAcc"

    iget-object v6, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->l:Ljava/lang/String;

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "code"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_BIND_UPDATE_PHONE_NUM_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/P;

    invoke-direct {v7, p0, v5}, Lcom/vivo/sdkplugin/activity/P;-><init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3

    :cond_65
    move v0, v5

    goto :goto_c

    :cond_67
    move v1, v5

    goto :goto_11

    :cond_69
    move-object v0, v3

    goto :goto_1f
.end method

.method private a(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->showDialog(I)V

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;I)V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_5

    :goto_4
    return-void

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;Z)Z
    .registers 11

    const/16 v8, 0xb

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_94

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v3, v1

    move v0, v1

    :goto_1b
    if-lt v3, v5, :cond_38

    :goto_1d
    if-nez v0, :cond_4f

    if-eqz p1, :cond_34

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->h:Landroid/content/res/Resources;

    const-string v3, "vivo_phone_num_empty_wrong"

    invoke-direct {p0, v3}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->b(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_34
    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->f:Z

    move v0, v1

    :goto_37
    return v0

    :cond_38
    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    if-ne v6, v2, :cond_4c

    add-int/lit8 v0, v0, 0x1

    :goto_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_4c
    add-int/lit8 v0, v0, 0x2

    goto :goto_49

    :cond_4f
    if-ge v0, v8, :cond_70

    if-eqz p1, :cond_6a

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->h:Landroid/content/res/Resources;

    const-string v3, "vivo_phone_num_format_wrong"

    invoke-direct {p0, v3}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->b(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_66
    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->f:Z

    move v0, v1

    goto :goto_37

    :cond_6a
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v7, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_66

    :cond_70
    if-le v0, v8, :cond_89

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->h:Landroid/content/res/Resources;

    const-string v3, "vivo_phone_num_format_wrong"

    invoke-direct {p0, v3}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->b(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->f:Z

    move v0, v1

    goto :goto_37

    :cond_89
    iput-boolean v2, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->f:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    move v0, v2

    goto :goto_37

    :cond_94
    move v0, v1

    goto :goto_1d
.end method

.method private b(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->g:Landroid/content/Context;

    const-string v1, "string"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Ljava/util/Map;
    .registers 9

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->m:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getUuid()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_82

    move v0, v4

    :goto_c
    const-string v1, ""

    if-ne v3, v1, :cond_84

    move v1, v4

    :goto_11
    or-int/2addr v0, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->m:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountId()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->l:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uuid"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/MD5;->encode32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "-----------pwd: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "   md5Pwd:  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    const-string v1, "pwd"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "e"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "newAcc"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->l:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_BIND_UPDATE_GET_VERIFY_CODE_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/Q;

    invoke-direct {v7, p0, v5}, Lcom/vivo/sdkplugin/activity/Q;-><init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3

    :cond_82
    move v0, v5

    goto :goto_c

    :cond_84
    move v1, v5

    goto :goto_11

    :cond_86
    move-object v0, v3

    goto :goto_1f
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;I)V
    .registers 3

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a(I)V

    return-void
.end method

.method private c(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->g:Landroid/content/Context;

    const-string v1, "id"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->i:Landroid/os/HandlerThread;

    if-nez v0, :cond_20

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.BIND_PHONE"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->i:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/activity/O;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/activity/O;-><init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->j:Lcom/vivo/sdkplugin/activity/O;

    :cond_20
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->k:Landroid/os/Handler;

    if-nez v0, :cond_2b

    new-instance v0, Lcom/vivo/sdkplugin/activity/R;

    invoke-direct {v0, p0, v2}, Lcom/vivo/sdkplugin/activity/R;-><init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->k:Landroid/os/Handler;

    :cond_2b
    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a(I)V

    :goto_36
    return-void

    :cond_37
    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->j:Lcom/vivo/sdkplugin/activity/O;

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/activity/O;->sendEmptyMessage(I)Z

    goto :goto_36
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Lcom/vivo/sdkplugin/activity/S;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->n:Lcom/vivo/sdkplugin/activity/S;

    return-object v0
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->m:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method

.method static synthetic h(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic j(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->f:Z

    return v0
.end method

.method static synthetic k(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->q:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic l(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->g:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public checkInfo()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->f:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2c

    :cond_33
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2c
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    packed-switch p1, :pswitch_data_c

    const-string v0, "BindPhoneActivityLog"

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
    .registers 8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string v0, "bind_phone"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->g:Landroid/content/Context;

    const-string v2, "layout"

    invoke-static {v1, v2, v0}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->o:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleRightBtn_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleRightBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->q:Landroid/widget/Button;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    const-string v0, "phone_num_input"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const-string v0, "phone_num_verify_input"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->b:Landroid/widget/EditText;

    const-string v0, "get_verify_code"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->h:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->h:Landroid/content/res/Resources;

    const-string v1, "indicator_input_error"

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->d:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->h:Landroid/content/res/Resources;

    const-string v1, "indicator_input_pass"

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->p:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vivo/sdkplugin/activity/H;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/H;-><init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->o:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/I;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/I;-><init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->q:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/J;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/J;-><init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/K;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/K;-><init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/L;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/L;-><init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/M;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/M;-><init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/N;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/N;-><init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/vivo/sdkplugin/activity/S;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/sdkplugin/activity/S;-><init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;JJ)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->n:Lcom/vivo/sdkplugin/activity/S;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->m:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_13b

    const-string v1, "pwd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->r:Ljava/lang/String;

    :cond_13b
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    sparse-switch p1, :sswitch_data_34

    const-string v0, "BindPhoneActivityLog"

    const-string v1, "Unsupport type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_e
    return-object v0

    :sswitch_f
    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_loading_string"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->getString(I)Ljava/lang/String;

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

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->i:Landroid/os/HandlerThread;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->i:Landroid/os/HandlerThread;

    :cond_f
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x4

    if-ne p2, v0, :cond_22

    const-string v0, "BindPhoneActivityLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKey,keyCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->i:Landroid/os/HandlerThread;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->i:Landroid/os/HandlerThread;

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

    const-string v0, "BindPhoneActivityLog"

    const-string v1, "***********************onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
