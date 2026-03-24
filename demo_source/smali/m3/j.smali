.class public final Lm3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lj3/j;

.field private static final b:Lj3/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj3/j;

    const-string v1, "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

    invoke-direct {v0, v1}, Lj3/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm3/j;->a:Lj3/j;

    new-instance v0, Lj3/j;

    const-string v1, ";\\s*(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)|\"([^\"]*)\"))?"

    invoke-direct {v0, v1}, Lj3/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm3/j;->b:Lj3/j;

    return-void
.end method

.method public static final a(Ll3/x;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ll3/x;

    if-eqz v0, :cond_0

    check-cast p1, Ll3/x;

    invoke-virtual {p1}, Ll3/x;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ll3/x;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Le3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(Ll3/x;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll3/x;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public static final c(Ll3/x;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll3/x;->d()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lz2/c;->c(III)I

    move-result v0

    if-ltz v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Ll3/x;->d()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lj3/l;->l(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ll3/x;->d()[Ljava/lang/String;

    move-result-object p0

    add-int/2addr v1, v3

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final d(Ljava/lang/String;)Ll3/x;
    .locals 14

    const-string v0, "<this>"

    invoke-static {p0, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lm3/j;->a:Lj3/j;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lm3/p;->z(Lj3/j;Ljava/lang/CharSequence;I)Lj3/h;

    move-result-object v0

    const/16 v2, 0x22

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lj3/h;->a()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "toLowerCase(...)"

    invoke-static {v3, v6}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lj3/h;->a()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lj3/h;->c()Lg3/f;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lg3/d;->b()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_7

    sget-object v7, Lm3/j;->b:Lj3/j;

    invoke-static {v7, p0, v0}, Lm3/p;->z(Lj3/j;Ljava/lang/CharSequence;I)Lj3/h;

    move-result-object v7

    if-eqz v7, :cond_0

    move v9, v4

    goto :goto_1

    :cond_0
    move v9, v1

    :goto_1
    const-string v10, "substring(...)"

    if-eqz v9, :cond_6

    invoke-interface {v7}, Lj3/h;->b()Lj3/g;

    move-result-object v0

    invoke-interface {v0, v4}, Lj3/g;->get(I)Lj3/f;

    move-result-object v0

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj3/f;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v9

    :goto_2
    if-nez v0, :cond_2

    :goto_3
    invoke-interface {v7}, Lj3/h;->c()Lg3/f;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Lj3/h;->b()Lj3/g;

    move-result-object v11

    invoke-interface {v11, v8}, Lj3/g;->get(I)Lj3/f;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lj3/f;->a()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_3
    move-object v11, v9

    :goto_4
    if-nez v11, :cond_4

    invoke-interface {v7}, Lj3/h;->b()Lj3/g;

    move-result-object v9

    const/4 v10, 0x3

    invoke-interface {v9, v10}, Lj3/g;->get(I)Lj3/f;

    move-result-object v9

    invoke-static {v9}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lj3/f;->a()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_4
    const-string v12, "\'"

    invoke-static {v11, v12, v1, v8, v9}, Lj3/l;->x(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {v11, v12, v1, v8, v9}, Lj3/l;->k(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v8, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {v11, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_5
    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter is not formatted correctly: \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" for: \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ll3/x;

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v6, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v0, p0, v3, v5, v1}, Ll3/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No subtype found for: \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final e(Ljava/lang/String;)Ll3/x;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lm3/j;->d(Ljava/lang/String;)Ll3/x;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final f(Ll3/x;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll3/x;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
