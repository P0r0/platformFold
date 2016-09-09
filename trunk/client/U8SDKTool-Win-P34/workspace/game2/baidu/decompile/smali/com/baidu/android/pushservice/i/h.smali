.class public Lcom/baidu/android/pushservice/i/h;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/h;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/i/h;->d:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/h;->e:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/h;->f:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/h;->c:Ljava/lang/String;

    return-void
.end method
