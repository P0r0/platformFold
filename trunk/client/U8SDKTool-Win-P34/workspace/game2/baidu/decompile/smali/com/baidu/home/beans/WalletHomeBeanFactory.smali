.class public final Lcom/baidu/home/beans/WalletHomeBeanFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/beans/IBeanFactory;


# static fields
.field public static final BEAN_ID_CHECK_NEW:I = 0xc003

.field public static final BEAN_ID_HOME_CFG_VIP:I = 0xc004

.field private static a:Lcom/baidu/home/beans/WalletHomeBeanFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/home/beans/WalletHomeBeanFactory;->a:Lcom/baidu/home/beans/WalletHomeBeanFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/home/beans/WalletHomeBeanFactory;
    .registers 2

    const-class v1, Lcom/baidu/home/beans/WalletHomeBeanFactory;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/home/beans/WalletHomeBeanFactory;->a:Lcom/baidu/home/beans/WalletHomeBeanFactory;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/home/beans/WalletHomeBeanFactory;

    invoke-direct {v0}, Lcom/baidu/home/beans/WalletHomeBeanFactory;-><init>()V

    sput-object v0, Lcom/baidu/home/beans/WalletHomeBeanFactory;->a:Lcom/baidu/home/beans/WalletHomeBeanFactory;

    :cond_e
    sget-object v0, Lcom/baidu/home/beans/WalletHomeBeanFactory;->a:Lcom/baidu/home/beans/WalletHomeBeanFactory;
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

    packed-switch p2, :pswitch_data_1a

    :goto_4
    if-eqz v0, :cond_d

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanManager;->getInstance()Lcom/baidu/wallet/core/beans/BeanManager;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/baidu/wallet/core/beans/BeanManager;->addBean(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BaseBean;)V

    :cond_d
    return-object v0

    :pswitch_e
    new-instance v0, Lcom/baidu/home/beans/b;

    invoke-direct {v0, p1}, Lcom/baidu/home/beans/b;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :pswitch_14
    new-instance v0, Lcom/baidu/home/beans/a;

    invoke-direct {v0, p1}, Lcom/baidu/home/beans/a;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :pswitch_data_1a
    .packed-switch 0xc003
        :pswitch_14
        :pswitch_e
    .end packed-switch
.end method
