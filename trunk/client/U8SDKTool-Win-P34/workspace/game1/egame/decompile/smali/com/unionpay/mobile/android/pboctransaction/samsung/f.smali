.class public final Lcom/unionpay/mobile/android/pboctransaction/samsung/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/mobile/android/pboctransaction/c;


# static fields
.field public static e:Z

.field public static f:Z


# instance fields
.field private final A:Landroid/os/Handler;

.field private B:Lcom/unionpay/tsmservice/request/InitRequestParams;

.field private C:Lcom/unionpay/tsmservice/request/SendApduRequestParams;

.field private final D:Lcom/unionpay/tsmservice/UPTsmAddon$UPTsmConnectionListener;

.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private j:Landroid/content/Context;

.field private k:Lcom/unionpay/mobile/android/pboctransaction/b;

.field private l:Lcom/unionpay/tsmservice/UPTsmAddon;

.field private m:Landroid/os/Handler;

.field private n:I

.field private final o:I

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private final z:Landroid/os/Handler$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->e:Z

    sput-boolean v0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "19999741583305435775450371903957622252895007857586703985696530069777024392884287211670048223494223356836139331264745305488035196420545843046674853984852305228918004888414759300445308845681087472809487791392726663269247999482633231304479943902981311338709709401000108625221857486530967716878328228310703650408575058288784573884262229674701501842066793928002725038356122707147929560460157457327696696471785787505023643000687928051333648369477362945785046976181683285277919023274376124429148429078602516462345014971452220809120399264066736558357572250447243744965533695780751271768398207631002867947152625578881506566297"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a:Ljava/lang/String;

    const-string v0, "65537"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->b:Ljava/lang/String;

    const-string v0, "5929703506495688276130676968213384164609348882017291684789802337394713840702726472221198819456433069055388915357817202968369194525956730949539025096963015440180443916974948318765778051794088998339276397676916425744003507605582286608745438301704836361482343765671805403004194772735755889141443700570750608527755694790475628670051863813384800013641474007746161600969180035295709344887092512089121125289090881005234379649440422346798246278284328310221953743757037875834557694749810951089453346522229122216198442376081589767583019062954875861469699069474707285206935898628020341168773624455554331118138151051364372906861"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->c:Ljava/lang/String;

    const-string v0, "UnionPay"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->d:Ljava/lang/String;

    const-string v0, "A0000003334355502D4D4F42494C45"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->h:Ljava/lang/String;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->i:I

    iput-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->m:Landroid/os/Handler;

    iput v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->n:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->o:I

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->p:Z

    const-string v0, "-1"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->r:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->s:Z

    iput-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->t:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->u:Z

    const-string v0, "-1"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->v:Ljava/lang/String;

    const-string v0, "-1"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->w:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->y:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g:Ljava/lang/String;

    new-instance v0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;-><init>(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->z:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->z:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    new-instance v0, Lcom/unionpay/mobile/android/pboctransaction/samsung/h;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/h;-><init>(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->D:Lcom/unionpay/tsmservice/UPTsmAddon$UPTsmConnectionListener;

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->m:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;ILjava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_62

    :goto_6
    return-void

    :sswitch_7
    invoke-direct {p0, v3}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Z)V

    goto :goto_6

    :sswitch_b
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :sswitch_19
    const-string v0, "uppay"

    const-string v1, "open channel fail"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->p:Z

    goto :goto_6

    :sswitch_29
    const-string v0, "uppay"

    const-string v1, "apdu fail"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->s:Z

    goto :goto_6

    :sswitch_39
    const-string v0, "uppay"

    const-string v1, "close channel fail"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :sswitch_41
    const-string v0, "uppay-spay"

    const-string v1, "get spay list call back"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->m:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :sswitch_56
    const-string v0, "uppay-spay"

    const-string v1, "check spay support fail"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f:Z

    sput-boolean v2, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->e:Z

    goto :goto_6

    :sswitch_data_62
    .sparse-switch
        0x3e8 -> :sswitch_7
        0x3f3 -> :sswitch_19
        0x3f4 -> :sswitch_29
        0x3f5 -> :sswitch_39
        0x3f6 -> :sswitch_b
        0x3f7 -> :sswitch_41
        0x3f8 -> :sswitch_56
    .end sparse-switch
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/unionpay/tsmservice/request/SendApduRequestParams;

    invoke-direct {v0}, Lcom/unionpay/tsmservice/request/SendApduRequestParams;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->C:Lcom/unionpay/tsmservice/request/SendApduRequestParams;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->C:Lcom/unionpay/tsmservice/request/SendApduRequestParams;

    invoke-virtual {v0, p2}, Lcom/unionpay/tsmservice/request/SendApduRequestParams;->setChannel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->C:Lcom/unionpay/tsmservice/request/SendApduRequestParams;

    invoke-virtual {v0, p1}, Lcom/unionpay/tsmservice/request/SendApduRequestParams;->setHexApdu(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->C:Lcom/unionpay/tsmservice/request/SendApduRequestParams;

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/tsmservice/request/SendApduRequestParams;->setReserve(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->k:Lcom/unionpay/mobile/android/pboctransaction/b;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->k:Lcom/unionpay/mobile/android/pboctransaction/b;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/b;->a()V

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->k:Lcom/unionpay/mobile/android/pboctransaction/b;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/b;->b()V

    goto :goto_b
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->p:Z

    return v0
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->u:Z

    return v0
.end method

.method static synthetic d(Ljava/lang/String;)Z
    .registers 4

    const/16 v2, 0x10

    const/4 v0, 0x1

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1a

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "06"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v0, 0x0

    :cond_1a
    return v0
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->s:Z

    return v0
.end method

.method private f()V
    .registers 8

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->B:Lcom/unionpay/tsmservice/request/InitRequestParams;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/unionpay/tsmservice/request/InitRequestParams;

    invoke-direct {v0}, Lcom/unionpay/tsmservice/request/InitRequestParams;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->B:Lcom/unionpay/tsmservice/request/InitRequestParams;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->B:Lcom/unionpay/tsmservice/request/InitRequestParams;

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/tsmservice/request/InitRequestParams;->setSignature(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->B:Lcom/unionpay/tsmservice/request/InitRequestParams;

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/tsmservice/request/InitRequestParams;->setReserve(Ljava/lang/String;)V

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->B:Lcom/unionpay/tsmservice/request/InitRequestParams;

    new-instance v2, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;

    const/16 v3, 0x3e8

    iget-object v4, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;-><init>(ILandroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->init(Lcom/unionpay/tsmservice/request/InitRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    if-eqz v0, :cond_41

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    const/4 v3, 0x1

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    const-string v6, ""

    invoke-static {v2, v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_41
    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_55} :catch_56

    :goto_55
    return-void

    :catch_56
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_55
.end method

.method static synthetic f(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f()V

    return-void
.end method

.method private g()Ljava/lang/String;
    .registers 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "signature"

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_c} :catch_11

    :goto_c
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_c
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, ""

    :goto_9
    return-object v0

    :cond_a
    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->r:Ljava/lang/String;

    :try_start_e
    new-instance v0, Lcom/unionpay/tsmservice/request/OpenChannelRequestParams;

    invoke-direct {v0}, Lcom/unionpay/tsmservice/request/OpenChannelRequestParams;-><init>()V

    invoke-virtual {v0, p1}, Lcom/unionpay/tsmservice/request/OpenChannelRequestParams;->setAppAID(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/tsmservice/request/OpenChannelRequestParams;->setReserve(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/tsmservice/UPTsmAddon;

    new-instance v2, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;

    const/16 v3, 0x3f3

    iget-object v4, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;-><init>(ILandroid/os/Handler;)V

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->openChannel(Lcom/unionpay/tsmservice/request/OpenChannelRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    const/4 v2, 0x1

    const/16 v3, 0x3f3

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_3f} :catch_54

    :cond_3f
    :goto_3f
    iget-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->p:Z

    if-eqz v0, :cond_3f

    const-string v0, "A0000003334355502D4D4F42494C45"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->v:Ljava/lang/String;

    :goto_4f
    iput-boolean v6, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->p:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->r:Ljava/lang/String;

    goto :goto_9

    :catch_54
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3f

    :cond_59
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->w:Ljava/lang/String;

    goto :goto_4f
.end method

.method public final a(Lcom/unionpay/mobile/android/pboctransaction/d;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unionpay/mobile/android/pboctransaction/d;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unionpay/mobile/android/model/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/tsmservice/UPTsmAddon;

    if-eqz v0, :cond_75

    :try_start_4
    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->aw:Z

    if-eqz v0, :cond_77

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->av:Z

    if-eqz v0, :cond_77

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->bi:Z

    if-eqz v0, :cond_77

    new-instance v0, Lcom/unionpay/tsmservice/request/GetCardInfoBySpayRequestParams;

    invoke-direct {v0}, Lcom/unionpay/tsmservice/request/GetCardInfoBySpayRequestParams;-><init>()V

    new-instance v1, Lcom/unionpay/tsmservice/data/Amount;

    invoke-direct {v1}, Lcom/unionpay/tsmservice/data/Amount;-><init>()V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/unionpay/tsmservice/data/Amount;->setProductPrice(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->y:Ljava/lang/String;

    invoke-static {v2}, Lcom/unionpay/mobile/android/pboctransaction/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {v1, v2}, Lcom/unionpay/tsmservice/data/Amount;->setCurrencyType(Ljava/lang/String;)V

    :cond_2e
    invoke-virtual {v0, v1}, Lcom/unionpay/tsmservice/request/GetCardInfoBySpayRequestParams;->setAmount(Lcom/unionpay/tsmservice/data/Amount;)V

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/tsmservice/request/GetCardInfoBySpayRequestParams;->setReserve(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/tsmservice/UPTsmAddon;

    new-instance v2, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;

    const/16 v3, 0x3f7

    iget-object v4, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;-><init>(ILandroid/os/Handler;)V

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getCardInfoBySamsungPay(Lcom/unionpay/tsmservice/request/GetCardInfoBySpayRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    const/4 v3, 0x1

    const/16 v4, 0x3f7

    const/4 v5, 0x0

    const-string v6, ""

    invoke-static {v2, v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5a
    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readList: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_6e} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6e} :catch_ab

    :cond_6e
    :goto_6e
    const-string v0, "uppay"

    const-string v1, "readList"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    const/4 v0, 0x0

    return-object v0

    :cond_77
    :try_start_77
    new-instance v0, Lcom/unionpay/tsmservice/request/GetSeAppListRequestParams;

    invoke-direct {v0}, Lcom/unionpay/tsmservice/request/GetSeAppListRequestParams;-><init>()V

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/tsmservice/request/GetSeAppListRequestParams;->setReserve(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/tsmservice/UPTsmAddon;

    new-instance v2, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;

    const/16 v3, 0x3f6

    iget-object v4, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;-><init>(ILandroid/os/Handler;)V

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getSEAppList(Lcom/unionpay/tsmservice/request/GetSeAppListRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    const/4 v2, 0x1

    const/16 v3, 0x3f6

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_a5} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_a5} :catch_ab

    goto :goto_6e

    :catch_a6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6e

    :catch_ab
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6e
.end method

.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->D:Lcom/unionpay/tsmservice/UPTsmAddon$UPTsmConnectionListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/tsmservice/UPTsmAddon;->removeConnectionListener(Lcom/unionpay/tsmservice/UPTsmAddon$UPTsmConnectionListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/tsmservice/UPTsmAddon;

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/UPTsmAddon;->unbind()V

    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->m:Landroid/os/Handler;

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/pboctransaction/b;Landroid/content/Context;)V
    .registers 6

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->k:Lcom/unionpay/mobile/android/pboctransaction/b;

    iput-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->j:Landroid/content/Context;

    :try_start_4
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->c:Ljava/lang/String;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v1, v2, v0}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/a;->a(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g:Ljava/lang/String;
    :try_end_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_29} :catch_56
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4 .. :try_end_29} :catch_5b

    :goto_29
    invoke-static {p2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getInstance(Landroid/content/Context;)Lcom/unionpay/tsmservice/UPTsmAddon;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->D:Lcom/unionpay/tsmservice/UPTsmAddon$UPTsmConnectionListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/tsmservice/UPTsmAddon;->addConnectionListener(Lcom/unionpay/tsmservice/UPTsmAddon$UPTsmConnectionListener;)V

    const-string v0, "uppay-spay"

    const-string v1, "type se  bind service"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/tsmservice/UPTsmAddon;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/tsmservice/UPTsmAddon;

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/UPTsmAddon;->isConnected()Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "uppay"

    const-string v1, "bind service"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/tsmservice/UPTsmAddon;

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/UPTsmAddon;->bind()V

    :cond_55
    :goto_55
    return-void

    :catch_56
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_29

    :catch_5b
    move-exception v0

    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_29

    :cond_60
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/tsmservice/UPTsmAddon;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/tsmservice/UPTsmAddon;

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/UPTsmAddon;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "uppay"

    const-string v1, "tem service already connected"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f()V

    goto :goto_55
.end method

.method public final a([BI)[B
    .registers 11

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->t:Ljava/lang/String;

    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_cf

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->w:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    :goto_28
    :try_start_28
    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->C:Lcom/unionpay/tsmservice/request/SendApduRequestParams;

    new-instance v3, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;

    const/16 v4, 0x3f4

    iget-object v5, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    invoke-direct {v3, v4, v5}, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;-><init>(ILandroid/os/Handler;)V

    invoke-virtual {v1, v2, v3}, Lcom/unionpay/tsmservice/UPTsmAddon;->sendApdu(Lcom/unionpay/tsmservice/request/SendApduRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    const/4 v3, 0x1

    const/16 v4, 0x3f4

    const/4 v5, 0x0

    const-string v6, ""

    invoke-static {v2, v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_4c} :catch_dc

    :cond_4c
    :goto_4c
    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5a
    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->t:Ljava/lang/String;

    if-nez v1, :cond_62

    iget-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->s:Z

    if-eqz v1, :cond_5a

    :cond_62
    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mApduResult: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mApduReturn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->s:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->t:Ljava/lang/String;

    if-eqz v1, :cond_a2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ret1 <---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->s:Z

    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ret2 <---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_cf
    if-ne p2, v4, :cond_28

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->v:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    :catch_dc
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_4c
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->x:Ljava/lang/String;

    return-void
.end method

.method public final c()V
    .registers 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->v:Ljava/lang/String;

    if-eqz v0, :cond_4c

    const-string v0, "-1"

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    :try_start_f
    new-instance v0, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;

    invoke-direct {v0}, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;-><init>()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;->setChannel(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;->setReserve(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/tsmservice/UPTsmAddon;

    new-instance v2, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;

    const/16 v3, 0x3f5

    iget-object v4, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;-><init>(ILandroid/os/Handler;)V

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->closeChannel(Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    const/4 v2, 0x1

    const/16 v3, 0x3f5

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_42} :catch_98

    :cond_42
    :goto_42
    iget-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->u:Z

    if-eqz v0, :cond_42

    const-string v0, "-1"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->v:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->u:Z

    :cond_4c
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->w:Ljava/lang/String;

    if-eqz v0, :cond_97

    const-string v0, "-1"

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    :try_start_5a
    new-instance v0, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;

    invoke-direct {v0}, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;-><init>()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;->setChannel(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;->setReserve(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/tsmservice/UPTsmAddon;

    new-instance v2, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;

    const/16 v3, 0x3f5

    iget-object v4, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;-><init>(ILandroid/os/Handler;)V

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->closeChannel(Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    const/4 v2, 0x1

    const/16 v3, 0x3f5

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_8d} :catch_9d

    :cond_8d
    :goto_8d
    iget-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->u:Z

    if-eqz v0, :cond_8d

    const-string v0, "-1"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->w:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->u:Z

    :cond_97
    return-void

    :catch_98
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_42

    :catch_9d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8d
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->y:Ljava/lang/String;

    return-void
.end method

.method public final d()V
    .registers 1

    return-void
.end method

.method public final e()Z
    .registers 7

    const/4 v0, 0x0

    new-instance v1, Lcom/unionpay/tsmservice/request/CheckSSamsungPayRequestParams;

    invoke-direct {v1}, Lcom/unionpay/tsmservice/request/CheckSSamsungPayRequestParams;-><init>()V

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unionpay/tsmservice/request/CheckSSamsungPayRequestParams;->setReserve(Ljava/lang/String;)V

    :try_start_d
    const-string v2, "uppay"

    const-string v3, "getSpaySupported"

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/tsmservice/UPTsmAddon;

    new-instance v3, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;

    const/16 v4, 0x3f8

    iget-object v5, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Landroid/os/Handler;

    invoke-direct {v3, v4, v5}, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;-><init>(ILandroid/os/Handler;)V

    invoke-virtual {v2, v1, v3}, Lcom/unionpay/tsmservice/UPTsmAddon;->checkSSamsungPay(Lcom/unionpay/tsmservice/request/CheckSSamsungPayRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v1

    const-string v2, "uppay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "retcheck = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_37} :catch_43

    if-eqz v1, :cond_3a

    :goto_39
    return v0

    :cond_3a
    sget-boolean v1, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->e:Z

    if-eqz v1, :cond_3a

    sput-boolean v0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->e:Z

    sget-boolean v0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f:Z

    goto :goto_39

    :catch_43
    move-exception v1

    goto :goto_39
.end method
