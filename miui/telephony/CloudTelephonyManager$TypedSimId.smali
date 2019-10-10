.class final Lmiui/telephony/CloudTelephonyManager$TypedSimId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/CloudTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TypedSimId"
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static final f:Ljava/lang/String; = ","


# instance fields
.field public final d:I

.field public final e:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput p1, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->d:I

    .line 392
    iput-object p2, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->e:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 5

    const-string v0, ","

    .line 434
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 435
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_22

    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 436
    new-instance p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-direct {p0, v1, v0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 438
    :cond_22
    new-instance v0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    invoke-direct {v0, v2, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    .line 404
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 408
    :cond_12
    check-cast p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    .line 410
    iget v2, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->d:I

    iget v3, p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->d:I

    if-eq v2, v3, :cond_1b

    return v1

    .line 413
    :cond_1b
    iget-object v2, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->e:Ljava/lang/String;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->e:Ljava/lang/String;

    iget-object p1, p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_2e

    :cond_2a
    iget-object p1, p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->e:Ljava/lang/String;

    if-eqz p1, :cond_2f

    :goto_2e
    return v1

    :cond_2f
    return v0

    :cond_30
    :goto_30
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 423
    iget v0, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->d:I

    mul-int/lit8 v0, v0, 0x1f

    .line 424
    iget-object v1, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->e:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 430
    invoke-virtual {p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
