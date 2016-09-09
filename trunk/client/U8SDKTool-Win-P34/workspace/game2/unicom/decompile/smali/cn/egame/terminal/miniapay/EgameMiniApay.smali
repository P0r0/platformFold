.class public Lcn/egame/terminal/miniapay/EgameMiniApay;
.super Ljava/lang/Object;


# static fields
.field public static CHAIN_MOBILE:[Ljava/lang/String; = null

.field public static CHINA_TELECOM:[Ljava/lang/String; = null

.field public static CHINA_UNICOM:[Ljava/lang/String; = null

.field protected static FEE_LOCK:Z = false

.field protected static SEND_SMS:Z = false

.field protected static final SENT:Ljava/lang/String; = "com.egame.minisdk.sent"

.field protected static final SMS_NUMBER:Ljava/lang/String; = "11807314"

.field public static final SMS_SENT_ERR:I = 0x65

.field public static final SMS_SENT_OK:I = 0x64

.field private static a:Z

.field private static b:Lcn/egame/terminal/miniapay/a;

.field private static c:Ljava/lang/String;

.field protected static context:Landroid/content/Context;

.field private static d:I

.field private static e:Z

.field protected static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "46003"

    aput-object v1, v0, v2

    const-string v1, "46005"

    aput-object v1, v0, v3

    const-string v1, "46011"

    aput-object v1, v0, v4

    sput-object v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->CHINA_TELECOM:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "46020"

    aput-object v1, v0, v2

    const-string v1, "46000"

    aput-object v1, v0, v3

    const-string v1, "46002"

    aput-object v1, v0, v4

    const-string v1, "46007"

    aput-object v1, v0, v5

    sput-object v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->CHAIN_MOBILE:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "46001"

    aput-object v1, v0, v2

    const-string v1, "46006"

    aput-object v1, v0, v3

    sput-object v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->CHINA_UNICOM:[Ljava/lang/String;

    sput-boolean v2, Lcn/egame/terminal/miniapay/EgameMiniApay;->a:Z

    sput-boolean v2, Lcn/egame/terminal/miniapay/EgameMiniApay;->SEND_SMS:Z

    sput-boolean v2, Lcn/egame/terminal/miniapay/EgameMiniApay;->FEE_LOCK:Z

    const-string v0, ""

    sput-object v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->c:Ljava/lang/String;

    sput v2, Lcn/egame/terminal/miniapay/EgameMiniApay;->d:I

    new-instance v0, Lcn/egame/terminal/miniapay/e;

    invoke-direct {v0}, Lcn/egame/terminal/miniapay/e;-><init>()V

    sput-object v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->mHandler:Landroid/os/Handler;

    sput-boolean v2, Lcn/egame/terminal/miniapay/EgameMiniApay;->e:Z

    const/16 v0, 0x3e

    new-array v0, v0, [C

    const/16 v1, 0x30

    aput-char v1, v0, v2

    const/16 v1, 0x31

    aput-char v1, v0, v3

    const/16 v1, 0x32

    aput-char v1, v0, v4

    const/16 v1, 0x33

    aput-char v1, v0, v5

    const/16 v1, 0x34

    aput-char v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x42

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x43

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x46

    aput-char v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x47

    aput-char v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x48

    aput-char v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x4a

    aput-char v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x4b

    aput-char v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x4c

    aput-char v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x4d

    aput-char v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x4e

    aput-char v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x4f

    aput-char v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x50

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x51

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x52

    aput-char v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x53

    aput-char v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x54

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x55

    aput-char v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x56

    aput-char v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x57

    aput-char v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x58

    aput-char v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x59

    aput-char v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x5a

    aput-char v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x67

    aput-char v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x68

    aput-char v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x6a

    aput-char v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x6b

    aput-char v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x6d

    aput-char v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x6f

    aput-char v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x70

    aput-char v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x71

    aput-char v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x76

    aput-char v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x77

    aput-char v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x78

    aput-char v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x79

    aput-char v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x7a

    aput-char v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fee(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/egame/terminal/miniapay/EgameFeeListener;)V
    .registers 13

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v5, -0x68

    const/16 v4, -0xca

    const/16 v3, -0xcd

    if-nez p0, :cond_20

    const/16 v0, -0x64

    sput v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->d:I

    :goto_e
    sget-boolean v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->a:Z

    if-eqz v0, :cond_e3

    if-nez p3, :cond_74

    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, -0xc9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    sput-object p0, Lcn/egame/terminal/miniapay/EgameMiniApay;->context:Landroid/content/Context;

    invoke-static {p0}, Lcn/egame/terminal/miniapay/a;->a(Landroid/content/Context;)Lcn/egame/terminal/miniapay/a;

    move-result-object v0

    sput-object v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->b:Lcn/egame/terminal/miniapay/a;

    if-nez v0, :cond_2f

    const/16 v0, -0x65

    sput v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->d:I

    goto :goto_e

    :cond_2f
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/egame/terminal/miniapay/EgameMiniApay;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_53

    sput v5, Lcn/egame/terminal/miniapay/EgameMiniApay;->d:I

    goto :goto_e

    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/egame/terminal/miniapay/EgameMiniApay;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/egame/terminal/miniapay/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/miniapay/c;

    move-result-object v0

    sget-object v1, Lcn/egame/terminal/miniapay/c;->a:Lcn/egame/terminal/miniapay/c;

    if-eq v0, v1, :cond_71

    sput v5, Lcn/egame/terminal/miniapay/EgameMiniApay;->d:I

    goto :goto_e

    :cond_71
    sput-boolean v8, Lcn/egame/terminal/miniapay/EgameMiniApay;->a:Z

    goto :goto_e

    :cond_74
    sget-object v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->b:Lcn/egame/terminal/miniapay/a;

    invoke-virtual {v0, p1}, Lcn/egame/terminal/miniapay/a;->a(Ljava/lang/String;)Lcn/egame/terminal/miniapay/b;

    move-result-object v6

    if-nez v6, :cond_80

    invoke-interface {p3, v4}, Lcn/egame/terminal/miniapay/EgameFeeListener;->feeFail(I)V

    :goto_7f
    return-void

    :cond_80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {p3, v3}, Lcn/egame/terminal/miniapay/EgameFeeListener;->feeFail(I)V

    goto :goto_7f

    :cond_8a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_96

    invoke-interface {p3, v3}, Lcn/egame/terminal/miniapay/EgameFeeListener;->feeFail(I)V

    goto :goto_7f

    :cond_96
    :try_start_96
    iget-object v0, v6, Lcn/egame/terminal/miniapay/b;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9b} :catch_b4

    move-result-wide v0

    const-wide/32 v2, 0x271c4f8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Legame/terminal/feesmslib/jni/SmsProtocol;->encrypt(JJLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b9

    const/16 v0, -0xcc

    invoke-interface {p3, v0}, Lcn/egame/terminal/miniapay/EgameFeeListener;->feeFail(I)V

    goto :goto_7f

    :catch_b4
    move-exception v0

    invoke-interface {p3, v4}, Lcn/egame/terminal/miniapay/EgameFeeListener;->feeFail(I)V

    goto :goto_7f

    :cond_b9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0D"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcn/egame/terminal/miniapay/EgameMiniApay;->FEE_LOCK:Z

    if-eqz v1, :cond_d2

    const/16 v0, -0xce

    invoke-interface {p3, v0}, Lcn/egame/terminal/miniapay/EgameFeeListener;->feeFail(I)V

    goto :goto_7f

    :cond_d2
    sput-boolean v8, Lcn/egame/terminal/miniapay/EgameMiniApay;->FEE_LOCK:Z

    sput-boolean v7, Lcn/egame/terminal/miniapay/EgameMiniApay;->SEND_SMS:Z

    new-instance v1, Lcn/egame/terminal/miniapay/d;

    iget-object v2, v6, Lcn/egame/terminal/miniapay/b;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0, p1, p3}, Lcn/egame/terminal/miniapay/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/egame/terminal/miniapay/EgameFeeListener;)V

    new-array v0, v7, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/egame/terminal/miniapay/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_7f

    :cond_e3
    sget v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->d:I

    invoke-interface {p3, v0}, Lcn/egame/terminal/miniapay/EgameFeeListener;->feeFail(I)V

    goto :goto_7f
.end method
