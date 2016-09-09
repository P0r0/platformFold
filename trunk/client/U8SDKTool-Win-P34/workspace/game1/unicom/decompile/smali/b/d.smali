.class Lb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lb/a;

.field final synthetic b:Lb/c;


# direct methods
.method constructor <init>(Lb/c;Lb/a;)V
    .registers 3

    .prologue
    .line 88
    iput-object p1, p0, Lb/d;->b:Lb/c;

    iput-object p2, p0, Lb/d;->a:Lb/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 91
    iget-object v0, p0, Lb/d;->b:Lb/c;

    iget-object v1, p0, Lb/d;->a:Lb/a;

    invoke-static {v0, v1}, Lb/c;->a(Lb/c;Lb/a;)Lb/a$a;

    move-result-object v0

    .line 92
    sget-object v1, Lb/a$a;->a:Lb/a$a;

    if-eq v0, v1, :cond_18

    .line 94
    :try_start_c
    iget-object v1, p0, Lb/d;->b:Lb/c;

    iget-object v2, p0, Lb/d;->a:Lb/a;

    invoke-virtual {v2}, Lb/a;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lb/c;->a(Lb/c;Ljava/lang/String;Lb/a$a;Z)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_18} :catch_19

    .line 99
    :cond_18
    :goto_18
    return-void

    .line 95
    :catch_19
    move-exception v0

    .line 96
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_18
.end method
