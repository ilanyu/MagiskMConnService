.class public abstract Lcn/kuaipan/android/http/a/i;
.super Lcn/kuaipan/android/http/a/h;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 60
    invoke-direct {p0}, Lcn/kuaipan/android/http/a/h;-><init>()V

    if-eqz p1, :cond_e

    .line 65
    iput-object p1, p0, Lcn/kuaipan/android/http/a/i;->a:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcn/kuaipan/android/http/a/i;->b:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcn/kuaipan/android/http/a/i;->c:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcn/kuaipan/android/http/a/i;->d:Ljava/lang/String;

    return-void

    .line 63
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Name must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcn/kuaipan/android/http/a/i;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcn/kuaipan/android/http/a/i;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 141
    iput-object p1, p0, Lcn/kuaipan/android/http/a/i;->a:Ljava/lang/String;

    return-void

    .line 139
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcn/kuaipan/android/http/a/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcn/kuaipan/android/http/a/i;->d:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcn/kuaipan/android/http/a/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lcn/kuaipan/android/http/a/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcn/kuaipan/android/http/a/i;->d:Ljava/lang/String;

    return-object v0
.end method
