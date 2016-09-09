.class public Lcom/vivo/assist/AssistHelper;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.vivo.assist_manager_service"

.field public static final ACTIVITY:I = 0x5

.field public static final DEFAULT_WEBVIEW:I = 0x6

.field public static final DEFAULT_WEBVIEWFOUR:I = 0xa

.field public static final DEFAULT_WEBVIEWONE:I = 0x7

.field public static final DEFAULT_WEBVIEWTHREE:I = 0x9

.field public static final DEFAULT_WEBVIEWTWO:I = 0x8

.field public static DisplayMetricsHeight:I = 0x0

.field public static DisplayMetricsWdith:I = 0x0

.field public static final FORUM:I = 0x1

.field public static final GIFT:I = 0x2

.field public static final HIDE:I = 0x4

.field public static final PERSONAL_CENTER:I = 0x3

.field public static final STRATERY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput v0, Lcom/vivo/assist/AssistHelper;->DisplayMetricsWdith:I

    sput v0, Lcom/vivo/assist/AssistHelper;->DisplayMetricsHeight:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindAssistManagerService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vivo.assist_manager_service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
