.class public final Lcom/baidu/android/pushservice/i/u;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/baidu/android/pushservice/i/u;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/android/pushservice/i/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/i/u;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/i/u;->b:Lcom/baidu/android/pushservice/i/u;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/u;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/u;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/u;->c:Landroid/content/Context;

    if-nez v0, :cond_17

    sget-object v0, Lcom/baidu/android/pushservice/i/u;->a:Ljava/lang/String;

    const-string v1, "Error occurs with mContext"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/android/pushservice/i/u;
    .registers 4

    sget-object v0, Lcom/baidu/android/pushservice/i/u;->b:Lcom/baidu/android/pushservice/i/u;

    if-nez v0, :cond_b

    new-instance v0, Lcom/baidu/android/pushservice/i/u;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/i/u;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/android/pushservice/i/u;->b:Lcom/baidu/android/pushservice/i/u;

    :cond_b
    sget-object v0, Lcom/baidu/android/pushservice/i/u;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current packet name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/i/u;->b:Lcom/baidu/android/pushservice/i/u;

    return-object v0
.end method


# virtual methods
.method public a(JJII)Ljava/lang/String;
    .registers 22

    const-string v0, ""

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/u;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/n;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/u;->c:Landroid/content/Context;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/baidu/android/pushservice/util/n;->b(Landroid/content/Context;JJII)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3a
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/i/a;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/a;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/baidu/android/pushservice/i/r;->r:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68
    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3a

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/a;->e()Lcom/baidu/android/pushservice/i/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_7c
    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/a;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/baidu/android/pushservice/i/r;->t:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/a;->d()Lcom/baidu/android/pushservice/i/j;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_90
    iget-object v1, p0, Lcom/baidu/android/pushservice/i/u;->c:Landroid/content/Context;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/baidu/android/pushservice/util/n;->a(Landroid/content/Context;JJII)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_146

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a4
    :goto_a4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_146

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/i/f;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/f;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/baidu/android/pushservice/i/r;->t:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c4

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/f;->d()Lcom/baidu/android/pushservice/i/j;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    :cond_c4
    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/f;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/baidu/android/pushservice/i/r;->r:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fa

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e6

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/f;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e6
    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_a4

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/f;->e()Lcom/baidu/android/pushservice/i/n;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    :cond_fa
    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/f;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/baidu/android/pushservice/i/r;->s:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_131

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11c

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/f;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11c
    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_a4

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/f;->f()Lcom/baidu/android/pushservice/i/c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a4

    :cond_131
    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/f;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/baidu/android/pushservice/i/r;->u:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a4

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/f;->g()Lcom/baidu/android/pushservice/i/g;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a4

    :cond_146
    :try_start_146
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1bb

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "app_appid"

    const-string v2, "9527"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_161
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/i/j;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/j;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_174
    .catch Lorg/json/JSONException; {:try_start_146 .. :try_end_174} :catch_175

    goto :goto_161

    :catch_175
    move-exception v0

    sget-object v1, Lcom/baidu/android/pushservice/i/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_192
    :goto_192
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2a8

    const-string v0, ""

    :goto_19a
    sget-object v1, Lcom/baidu/android/pushservice/i/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1b3
    :try_start_1b3
    const-string v0, "push_action"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1bb
    if-eqz v9, :cond_26d

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/i/m;

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/u;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/i/m;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1f6
    .catch Lorg/json/JSONException; {:try_start_1b3 .. :try_end_1f6} :catch_175

    if-eqz v1, :cond_22d

    :try_start_1f8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_22d

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_202
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/android/pushservice/i/n;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/i/n;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_215
    .catch Lorg/json/JSONException; {:try_start_1f8 .. :try_end_215} :catch_216

    goto :goto_202

    :catch_216
    move-exception v0

    :try_start_217
    sget-object v0, Lcom/baidu/android/pushservice/i/u;->a:Ljava/lang/String;

    const-string v1, "error: JSONException"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21e
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_229

    const-string v0, "push_action"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_229
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_22c
    .catch Lorg/json/JSONException; {:try_start_217 .. :try_end_22c} :catch_175

    goto :goto_1c1

    :cond_22d
    if-eqz v0, :cond_24d

    :try_start_22f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_24d

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_239
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/i/c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_239

    :cond_24d
    if-eqz v2, :cond_21e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_21e

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_259
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/i/b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_26c
    .catch Lorg/json/JSONException; {:try_start_22f .. :try_end_26c} :catch_216

    goto :goto_259

    :cond_26d
    if-eqz v14, :cond_192

    :try_start_26f
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_192

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "app_appid"

    const-string v2, "9528"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/i/g;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/g;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_28a

    :cond_29e
    const-string v0, "crash_info"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2a6
    .catch Lorg/json/JSONException; {:try_start_26f .. :try_end_2a6} :catch_175

    goto/16 :goto_192

    :cond_2a8
    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_19a
.end method
