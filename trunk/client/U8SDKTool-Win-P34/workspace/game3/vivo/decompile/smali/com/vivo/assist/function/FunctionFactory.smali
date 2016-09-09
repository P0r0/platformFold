.class public Lcom/vivo/assist/function/FunctionFactory;
.super Ljava/lang/Object;


# static fields
.field public static final ACCOUNT:I = 0x3

.field public static final ACTIVITY:I = 0x5

.field public static final DEFAULT_WEBVIEW:I = 0x6

.field public static final DEFAULT_WEBVIEWFOUR:I = 0xa

.field public static DEFAULT_WEBVIEWFOUR_TITLE:Ljava/lang/String; = null

.field public static final DEFAULT_WEBVIEWONE:I = 0x7

.field public static DEFAULT_WEBVIEWONE_TITLE:Ljava/lang/String; = null

.field public static final DEFAULT_WEBVIEWTHREE:I = 0x9

.field public static DEFAULT_WEBVIEWTHREE_TITLE:Ljava/lang/String; = null

.field public static final DEFAULT_WEBVIEWTWO:I = 0x8

.field public static DEFAULT_WEBVIEWTWO_TITLE:Ljava/lang/String; = null

.field public static DEFAULT_WEBVIEW_TITLE:Ljava/lang/String; = null

.field public static final FORUM:I = 0x1

.field public static final GIFT:I = 0x2

.field public static final HIDE:I = 0x4

.field public static final STRATERY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/vivo/assist/function/FunctionFactory;->DEFAULT_WEBVIEW_TITLE:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/vivo/assist/function/FunctionFactory;->DEFAULT_WEBVIEWONE_TITLE:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/vivo/assist/function/FunctionFactory;->DEFAULT_WEBVIEWTWO_TITLE:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/vivo/assist/function/FunctionFactory;->DEFAULT_WEBVIEWTHREE_TITLE:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/vivo/assist/function/FunctionFactory;->DEFAULT_WEBVIEWFOUR_TITLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFunction(Landroid/content/Context;I)Lcom/vivo/assist/function/Function;
    .registers 5

    packed-switch p1, :pswitch_data_5a

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    new-instance v0, Lcom/vivo/assist/function/StrategyFunction;

    invoke-direct {v0, p0}, Lcom/vivo/assist/function/StrategyFunction;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :pswitch_b
    new-instance v0, Lcom/vivo/assist/function/ForumFunction;

    invoke-direct {v0, p0}, Lcom/vivo/assist/function/ForumFunction;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :pswitch_11
    new-instance v0, Lcom/vivo/assist/function/GiftFunction;

    invoke-direct {v0, p0}, Lcom/vivo/assist/function/GiftFunction;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :pswitch_17
    new-instance v0, Lcom/vivo/assist/function/AccountFunction;

    invoke-direct {v0, p0}, Lcom/vivo/assist/function/AccountFunction;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :pswitch_1d
    new-instance v0, Lcom/vivo/assist/function/HideFunction;

    invoke-direct {v0, p0}, Lcom/vivo/assist/function/HideFunction;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :pswitch_23
    new-instance v0, Lcom/vivo/assist/function/ActivityFunction;

    invoke-direct {v0, p0}, Lcom/vivo/assist/function/ActivityFunction;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :pswitch_29
    new-instance v0, Lcom/vivo/assist/function/DefaultFunction;

    sget-object v1, Lcom/vivo/assist/function/FunctionFactory;->DEFAULT_WEBVIEW_TITLE:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-direct {v0, p0, v1, v2}, Lcom/vivo/assist/function/DefaultFunction;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_32
    new-instance v0, Lcom/vivo/assist/function/DefaultFunction;

    sget-object v1, Lcom/vivo/assist/function/FunctionFactory;->DEFAULT_WEBVIEWONE_TITLE:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-direct {v0, p0, v1, v2}, Lcom/vivo/assist/function/DefaultFunction;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_3b
    new-instance v0, Lcom/vivo/assist/function/DefaultFunction;

    sget-object v1, Lcom/vivo/assist/function/FunctionFactory;->DEFAULT_WEBVIEWTWO_TITLE:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-direct {v0, p0, v1, v2}, Lcom/vivo/assist/function/DefaultFunction;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_45
    new-instance v0, Lcom/vivo/assist/function/DefaultFunction;

    sget-object v1, Lcom/vivo/assist/function/FunctionFactory;->DEFAULT_WEBVIEWTHREE_TITLE:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-direct {v0, p0, v1, v2}, Lcom/vivo/assist/function/DefaultFunction;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_4f
    new-instance v0, Lcom/vivo/assist/function/DefaultFunction;

    sget-object v1, Lcom/vivo/assist/function/FunctionFactory;->DEFAULT_WEBVIEWFOUR_TITLE:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, p0, v1, v2}, Lcom/vivo/assist/function/DefaultFunction;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_4

    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_b
        :pswitch_11
        :pswitch_17
        :pswitch_1d
        :pswitch_23
        :pswitch_29
        :pswitch_32
        :pswitch_3b
        :pswitch_45
        :pswitch_4f
    .end packed-switch
.end method
