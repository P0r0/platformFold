.class public Lcom/huanju/data/b/b/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/huanju/data/a/b;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/content/Context;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "HjStartTimeCacheControllor"

    invoke-static {v0}, Lcom/huanju/data/a/b;->a(Ljava/lang/String;)Lcom/huanju/data/a/b;

    move-result-object v0

    sput-object v0, Lcom/huanju/data/b/b/a;->a:Lcom/huanju/data/a/b;

    const-string v0, "hj_datasdk_appstarttime"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huanju/data/a/h;->a([BZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/data/b/b/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huanju/data/b/b/a;->c:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/huanju/data/b/b/a;->d:Landroid/content/Context;

    iput v3, p0, Lcom/huanju/data/b/b/a;->e:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/b/b/a;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/huanju/data/b/b/a;->d:Landroid/content/Context;

    const-string v1, "hj_datasdk_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/b/b/a;->c:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/huanju/data/b/b/a;->c:Landroid/content/SharedPreferences;

    const-string v1, "hj_data_day_send_time"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/huanju/data/b/b/a;->e:I

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/huanju/data/b/b/a;->e:I

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public b()V
    .registers 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/huanju/data/b/b/a;->e:I

    iget-object v0, p0, Lcom/huanju/data/b/b/a;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hj_data_day_send_time"

    iget v2, p0, Lcom/huanju/data/b/b/a;->e:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
