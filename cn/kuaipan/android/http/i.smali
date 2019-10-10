.class public Lcn/kuaipan/android/http/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcn/kuaipan/android/http/h;

.field private final b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/http/h;Ljava/lang/String;)V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcn/kuaipan/android/http/i;->a:Lcn/kuaipan/android/http/h;

    .line 12
    iput-object p2, p0, Lcn/kuaipan/android/http/i;->b:Ljava/lang/String;

    .line 13
    invoke-static {}, Lcn/kuaipan/android/http/h;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/kuaipan/android/http/i;->c:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 13

    .line 26
    iget-object v0, p0, Lcn/kuaipan/android/http/i;->a:Lcn/kuaipan/android/http/h;

    if-eqz v0, :cond_15

    .line 27
    invoke-static {}, Lcn/kuaipan/android/http/h;->a()J

    move-result-wide v8

    .line 28
    iget-object v1, p0, Lcn/kuaipan/android/http/i;->a:Lcn/kuaipan/android/http/h;

    iget-object v2, p0, Lcn/kuaipan/android/http/i;->b:Ljava/lang/String;

    iget-wide v3, p0, Lcn/kuaipan/android/http/i;->c:J

    long-to-float v7, p1

    move-wide v5, v8

    invoke-virtual/range {v1 .. v7}, Lcn/kuaipan/android/http/h;->a(Ljava/lang/String;JJF)V

    .line 29
    iput-wide v8, p0, Lcn/kuaipan/android/http/i;->c:J

    :cond_15
    return-void
.end method

.method public a(JJJ)V
    .registers 15

    .line 17
    iget-object v0, p0, Lcn/kuaipan/android/http/i;->a:Lcn/kuaipan/android/http/h;

    if-eqz v0, :cond_16

    .line 18
    iget-object v1, p0, Lcn/kuaipan/android/http/i;->a:Lcn/kuaipan/android/http/h;

    iget-object v2, p0, Lcn/kuaipan/android/http/i;->b:Ljava/lang/String;

    long-to-float v7, p5

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v7}, Lcn/kuaipan/android/http/h;->a(Ljava/lang/String;JJF)V

    .line 19
    iget-wide p1, p0, Lcn/kuaipan/android/http/i;->c:J

    cmp-long p1, p3, p1

    if-lez p1, :cond_16

    .line 20
    iput-wide p3, p0, Lcn/kuaipan/android/http/i;->c:J

    :cond_16
    return-void
.end method
