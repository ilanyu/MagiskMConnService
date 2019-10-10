.class public Lcn/kuaipan/android/a/j;
.super Lcn/kuaipan/android/a/e;
.source "SourceFile"


# static fields
.field private static final bI:J = -0x973d5eb4de08ba7L


# instance fields
.field private final bJ:I

.field private final bK:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 24
    invoke-direct {p0, p2, p3}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;)V

    .line 25
    iput p1, p0, Lcn/kuaipan/android/a/j;->bJ:I

    const-string p1, "Message not come from api server."

    .line 26
    iput-object p1, p0, Lcn/kuaipan/android/a/j;->bK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, p2, v0}, Lcn/kuaipan/android/a/j;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 18
    invoke-static {p1, p2}, Lcn/kuaipan/android/a/k;->a(ILjava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;)V

    .line 19
    iput p1, p0, Lcn/kuaipan/android/a/j;->bJ:I

    .line 20
    iput-object p2, p0, Lcn/kuaipan/android/a/j;->bK:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(ErrCode: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/kuaipan/android/a/j;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): StatusCode: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/kuaipan/android/a/j;->bJ:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcn/kuaipan/android/a/j;->bK:Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", msg: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/kuaipan/android/a/j;->bK:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    :cond_44
    iget-object v1, p0, Lcn/kuaipan/android/a/j;->bH:Ljava/lang/String;

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcn/kuaipan/android/a/j;->bH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_68

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/kuaipan/android/a/j;->bH:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_68
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcn/kuaipan/android/a/j;->bK:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    .line 55
    iget v0, p0, Lcn/kuaipan/android/a/j;->bJ:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 43
    iget-object v0, p0, Lcn/kuaipan/android/a/j;->bK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 44
    invoke-super {p0}, Lcn/kuaipan/android/a/e;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 46
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/kuaipan/android/a/j;->bK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcn/kuaipan/android/a/e;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
