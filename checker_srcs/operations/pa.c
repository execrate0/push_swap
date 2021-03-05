/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pa.c                                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahallain <ahallain@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/03/05 16:43:28 by ahallain          #+#    #+#             */
/*   Updated: 2021/03/05 22:53:06 by ahallain         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../list.h"

void	pa(t_number *number)
{
	t_item	*temp;

	if (!number->b)
		return ;
	temp = number->b->next;
	number->b->next = number->a;
	number->a = number->b;
	number->b = temp;
}
