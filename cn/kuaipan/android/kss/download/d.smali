.class public Lcn/kuaipan/android/kss/download/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/kuaipan/android/kss/download/LoadMap;

.field private final b:Lcn/kuaipan/android/kss/download/LoadMap$Space;


# direct methods
.method constructor <init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$Space;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcn/kuaipan/android/kss/download/d;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    .line 15
    iput-object p2, p0, Lcn/kuaipan/android/kss/download/d;->b:Lcn/kuaipan/android/kss/download/LoadMap$Space;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/d;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    if-eqz v0, :cond_f

    .line 23
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/d;->b:Lcn/kuaipan/android/kss/download/LoadMap$Space;

    invoke-virtual {v0, p1}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->a(I)V

    .line 25
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/d;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    invoke-virtual {v0, p1}, Lcn/kuaipan/android/kss/download/LoadMap;->b(I)V

    return-void

    .line 21
    :cond_f
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The recoder has been recycled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Z
    .registers 5

    .line 29
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/d;->b:Lcn/kuaipan/android/kss/download/LoadMap$Space;

    invoke-virtual {v0}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public b()V
    .registers 2

    .line 33
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/d;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    if-eqz v0, :cond_c

    .line 34
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/d;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    invoke-virtual {v0, p0}, Lcn/kuaipan/android/kss/download/LoadMap;->a(Lcn/kuaipan/android/kss/download/d;)V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcn/kuaipan/android/kss/download/d;->a:Lcn/kuaipan/android/kss/download/LoadMap;

    :cond_c
    return-void
.end method

.method c()J
    .registers 3

    .line 40
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/d;->b:Lcn/kuaipan/android/kss/download/LoadMap$Space;

    invoke-virtual {v0}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .registers 3

    .line 44
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/d;->b:Lcn/kuaipan/android/kss/download/LoadMap$Space;

    invoke-virtual {v0}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method e()Lcn/kuaipan/android/kss/download/LoadMap$Space;
    .registers 2

    .line 48
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/d;->b:Lcn/kuaipan/android/kss/download/LoadMap$Space;

    return-object v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/d;->b()V

    .line 54
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
