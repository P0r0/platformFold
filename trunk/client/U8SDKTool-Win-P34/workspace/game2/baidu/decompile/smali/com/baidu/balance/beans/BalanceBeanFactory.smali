.class public final Lcom/baidu/balance/beans/BalanceBeanFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/beans/IBeanFactory;


# static fields
.field public static final BEAN_ID_BAIZHUANFEN_CORE_INFO:I = 0x5

.field public static final BEAN_ID_BALANCE_HISTORY:I = 0x4

.field public static final BEAN_ID_CASHBACK_CORE_INFO:I = 0x6

.field public static final BEAN_ID_WIDTHDRAW:I = 0x3

.field public static final BEAN_ID_WIDTHDRAW_LIMIT:I = 0x2

.field private static a:Lcom/baidu/balance/beans/BalanceBeanFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/balance/beans/BalanceBeanFactory;->a:Lcom/baidu/balance/beans/BalanceBeanFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/balance/beans/BalanceBeanFactory;
    .registers 2

    const-class v1, Lcom/baidu/balance/beans/BalanceBeanFactory;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/balance/beans/BalanceBeanFactory;->a:Lcom/baidu/balance/beans/BalanceBeanFactory;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/balance/beans/BalanceBeanFactory;

    invoke-direct {v0}, Lcom/baidu/balance/beans/BalanceBeanFactory;-><init>()V

    sput-object v0, Lcom/baidu/balance/beans/BalanceBeanFactory;->a:Lcom/baidu/balance/beans/BalanceBeanFactory;

    :cond_e
    sget-object v0, Lcom/baidu/balance/beans/BalanceBeanFactory;->a:Lcom/baidu/balance/beans/BalanceBeanFactory;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;
    .registers 6

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_2c

    :goto_4
    if-eqz v0, :cond_d

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/baidu/wallet/core/beans/BeanManager;->addBean(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BaseBean;)V

    :cond_d
    return-object v0

    :pswitch_e
    new-instance v0, Lcom/baidu/balance/beans/e;

    invoke-direct {v0, p1}, Lcom/baidu/balance/beans/e;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :pswitch_14
    new-instance v0, Lcom/baidu/balance/beans/d;

    invoke-direct {v0, p1}, Lcom/baidu/balance/beans/d;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :pswitch_1a
    new-instance v0, Lcom/baidu/balance/beans/b;

    invoke-direct {v0, p1}, Lcom/baidu/balance/beans/b;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :pswitch_20
    new-instance v0, Lcom/baidu/balance/beans/a;

    invoke-direct {v0, p1}, Lcom/baidu/balance/beans/a;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :pswitch_26
    new-instance v0, Lcom/baidu/balance/beans/c;

    invoke-direct {v0, p1}, Lcom/baidu/balance/beans/c;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_e
        :pswitch_14
        :pswitch_1a
        :pswitch_20
        :pswitch_26
    .end packed-switch
.end method
